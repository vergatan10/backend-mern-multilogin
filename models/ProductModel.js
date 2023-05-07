import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./UserModel.js";

// data type untuk model
const { DataTypes } = Sequelize;

// mmebuat const products dan membuat table product
const Products = db.define(
  "product",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
        len: [3, 100],
      },
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    userId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableNames: true,
  }
);
// user memiliki banyak product
Users.hasMany(Products);
// product hanya dimiliki satu user berdasarkan foreignkey product.userId
Products.belongsTo(Users, { foreignKey: "userId" });

export default Products;
