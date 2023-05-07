import { Sequelize } from "sequelize";
// membuat koneksi ke database mysql xampp
const db = new Sequelize("auth_db", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
