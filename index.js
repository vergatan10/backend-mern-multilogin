import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/Database.js";
import SequelizeStore from "connect-session-sequelize";
import UserRoute from "./routes/UserRoute.js";
import ProductRoute from "./routes/ProductRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
dotenv.config(); // inisialisasi dotenv

const app = express();

// inisialisasi sequelizestore dengan const sessionStore
const sessionStore = SequelizeStore(session.Store);
// membuat store dengan SequelizeStore, dengan db dari db mysql
const store = new sessionStore({
  db: db,
});

// mengecek db, jika ada model, tidak ada table, otomatis membuat table
// (async () => {
//   await db.sync();
// })();

// definisikan session dari express-session
app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: "auto", // http false, https true
    },
  })
);

// tidak ada table session, maka sinkron table session dan membuat table baru
// store.sync();
// komen agar tidak membuat table lagi

// agar dapat diakses dari luar
app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);

// agar server dapat menerima json
app.use(express.json());
// membuat akses router berdasarkan routes
app.use(UserRoute);
app.use(ProductRoute);
app.use(AuthRoute);
// menyalakan server dengan port 5000
app.listen(process.env.APP_PORT, () => {
  console.log("server up and running...");
});
