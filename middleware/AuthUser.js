import User from "../models/UserModel.js";

// middleware check session
// membawa 3 paramter, yaitu next karena ini middleware
export const verifyUser = async (req, res, next) => {
  // cek jika req session userId tidak ditemukan
  if (!req.session.userId) {
    // kembalikan status 401 jika tidak ada session
    return res.status(401).json({ msg: "Mohon login ke akun Anda" });
  }
  //   cari user berdasarkan session.userId / uuid
  const user = await User.findOne({
    where: {
      uuid: req.session.userId,
    },
  });
  //   jika tidak ditemukan, kembalikan status error
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // set variable userId diisi oleh value user.id
  // karena dibutuhkan setiap controller nanti setelah login
  req.userId = user.id;
  // role dibutuhkan untuk pengecekan authorization
  req.role = user.role;
  next();
};

// middleware admin only
// membawa 3 paramter, yaitu next karena ini middleware
export const adminOnly = async (req, res, next) => {
  //   cari user berdasarkan session.userId / uuid
  const user = await User.findOne({
    where: {
      uuid: req.session.userId,
    },
  });
  //   jika tidak ditemukan, kembalikan status error
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // cek jika user role bukan admin
  if (user.role !== "admin")
    return res.status(403).json({ msg: "Akses terlarang" });
  next();
};
