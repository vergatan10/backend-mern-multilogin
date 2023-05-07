import Product from "../models/ProductModel.js";
import User from "../models/UserModel.js";
import { Op } from "sequelize";

export const getProducts = async (req, res) => {
  try {
    let response;
    // memiliki req.role dari middleware verifyUser
    if (req.role === "admin") {
      // jika role nya sebagai admin
      // dapat melihat semua product
      response = await Product.findAll({
        attributes: ["uuid", "name", "price"],
        include: [
          {
            model: User, // menyertakan user karena relasi
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      // jika role nya bukan admin
      // hanya dapat melihat product yg user login input
      response = await Product.findAll({
        attributes: ["uuid", "name", "price"],
        where: {
          userId: req.userId, // dari middleware verifyUser
        },
        include: [
          {
            model: User, // menyertakan user karena relasi
            attributes: ["name", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getProductById = async (req, res) => {
  try {
    // cari 1 product berdasarkan uuid
    const product = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    // jika product tidak ditemukan
    if (!product) return res.status(404).json({ msg: "Data tidak ditemukan" });

    let response;
    // memiliki req.role dari middleware verifyUser
    if (req.role === "admin") {
      // jika role nya sebagai admin
      // dapat melihat semua product
      response = await Product.findOne({
        attributes: ["uuid", "name", "price"],
        where: {
          id: product.id,
        },
        include: [
          {
            model: User, // menyertakan user karena relasi
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      // jika role nya bukan admin
      // hanya dapat melihat product yg user login input
      response = await Product.findOne({
        attributes: ["uuid", "name", "price"],
        where: {
          [Op.and]: [{ id: product.id }, { userId: req.userId }], // req.userId dari middleware verifyUser
        },
        include: [
          {
            model: User, // menyertakan user karena relasi
            attributes: ["name", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createProduct = async (req, res) => {
  // destruct data yg dikirim
  const { name, price } = req.body;
  try {
    // create product
    await Product.create({
      name: name,
      price: price,
      userId: req.userId, // dari middleware
    });
    res.status(201).json({ msg: "Product created successfully" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const updateProduct = async (req, res) => {
  try {
    // cari 1 product berdasarkan uuid
    const product = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    // jika product tidak ditemukan
    if (!product) return res.status(404).json({ msg: "Data tidak ditemukan" });
    // destruct data yg dikirim
    const { name, price } = req.body;
    // memiliki req.role dari middleware verifyUser
    if (req.role === "admin") {
      await Product.update(
        {
          name,
          price,
        },
        { where: { id: product.id } }
      );
    } else {
      // jika userId login dan product bukan miliknya maka status 403
      if (req.userId !== product.userId)
        return res.status(403).json({ msg: "Akses terlarang" });
      // update
      await Product.update(
        {
          name,
          price,
        },
        {
          // where operator AND
          where: {
            [Op.and]: [{ id: product.id }, { userId: req.userId }], // req.userId dari middleware verifyUser
          },
        }
      );
    }
    res.status(200).json({ msg: "Product updated successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteProduct = async (req, res) => {
  try {
    // cari 1 product berdasarkan uuid
    const product = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    // jika product tidak ditemukan
    if (!product) return res.status(404).json({ msg: "Data tidak ditemukan" });
    // memiliki req.role dari middleware verifyUser
    if (req.role === "admin") {
      // DELETE product
      await Product.destroy({ where: { id: product.id } });
    } else {
      // jika userId login dan product bukan miliknya maka status 403
      if (req.userId !== product.userId)
        return res.status(403).json({ msg: "Akses terlarang" });
      // DELETE product
      await Product.destroy({
        // where operator AND
        where: {
          [Op.and]: [{ id: product.id }, { userId: req.userId }], // req.userId dari middleware verifyUser
        },
      });
    }
    res.status(200).json({ msg: "Product deleted successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
