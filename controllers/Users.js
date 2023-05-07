import User from "../models/UserModel.js";
import argon2 from "argon2";

// membuat fungsi getUser
export const getUsers = async (req, res) => {
  try {
    const response = await User.findAll({
      // menampilkan hanya uuid name email dan role
      attributes: ["uuid", "name", "email", "role"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// get user berdasarkan uuid
export const getUserById = async (req, res) => {
  try {
    const response = await User.findOne({
      // menampilkan hanya uuid name email dan role
      attributes: ["uuid", "name", "email", "role"],
      where: {
        // req.params.id dari route /users/:id
        uuid: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createUser = async (req, res) => {
  // destruction / bongkar req.body menjadi objek name,email, password dll
  const { name, email, password, confPassword, role } = req.body;
  if (password !== confPassword)
    return res
      .status(400)
      .json({ msg: "Password dan Confirm Password tidak cocok" });
  // membuat hash password dengan argon2
  const hashPassword = await argon2.hash(password);
  try {
    //create user
    await User.create({
      name: name,
      email: email,
      password: hashPassword,
      role: role,
    });
    res.status(201).json({ msg: "Register Berhasil" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

// update user
export const updateUser = async (req, res) => {
  const user = await User.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  const { name, email, password, confPassword, role } = req.body;
  let hashPassword;
  // jika tidak mengirim kan password atau null password
  if (password === "" || password === null) {
    // maka password akan mengambil dari database alias password tidak berubah
    hashPassword = user.password;
  } else {
    // maka password diambil dari password baru dan dihash kembali
    hashPassword = await argon2.hash(password);
  }
  // jika password tidak sama dengan confirm password
  if (password !== confPassword)
    return res
      .status(400)
      .json({ msg: "Password dan Confirm Password tidak cocok" });
  try {
    // update data
    await User.update(
      {
        name: name,
        email: email,
        password: hashPassword,
        role: role,
      },
      {
        where: {
          id: user.id,
        },
      }
    );
    res.status(200).json({ msg: "User Updated" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

export const deleteUser = async (req, res) => {
  // cari user berdasarkan uuid
  const user = await User.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  // jika tidak ada user ditemukan maka kirim status 404
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  try {
    // hapus user berdasarkan uuid
    await User.destroy({
      where: {
        id: user.id,
      },
    });
    res.status(200).json({ msg: "User Deleted" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
