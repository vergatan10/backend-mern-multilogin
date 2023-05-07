import User from "../models/UserModel.js";
import argon2 from "argon2";

// membuat fungsi login
export const Login = async (req, res) => {
  // cari user berdasarkan email
  const user = await User.findOne({
    where: {
      email: req.body.email,
    },
  });
  //   kembalikan status error jika email tidak cocok
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // verifikasi password dari database dan dari request password
  const match = await argon2.verify(user.password, req.body.password);
  //   jika tidak sama kembalikan status error
  if (!match) return res.status(400).json({ msg: "Wrong Password" });
  // set session userId dengan user.uuid
  req.session.userId = user.uuid; // set session userId dengan uuid
  const uuid = user.uuid;
  const name = user.name;
  const email = user.email;
  const role = user.role;
  //   berikan json data dari user
  res.status(200).json({ uuid, name, email, role });
};

// membuat fungsi get data user login
export const Me = async (req, res) => {
  // cek jika req session userId tidak ditemukan
  if (!req.session.userId) {
    // kembalikan status 401 jika tidak ada session
    return res.status(401).json({ msg: "Mohon login ke akun Anda" });
  }
  //   cari user berdasarkan session.userId / uuid
  const user = await User.findOne({
    attributes: ["uuid", "name", "email", "role"],
    where: {
      uuid: req.session.userId,
    },
  });
  //   jika tidak ditemukan, kembalikan status error
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  res.status(200).json(user);
};

// membuat fungsi logout
export const logOut = async (req, res) => {
  // destroy session, dan membawa parameter error
  req.session.destroy((err) => {
    // jika ada error maka tampilkan status 400 tidak dapat logout
    if (err) return res.status(400).json({ msg: "Tidak dapat logout" });
    // jika tidak ada error, berikan status 200 Anda telah logout
    res.status(200).json({ msg: "Anda telah logout" });
  });
};
