import express from "express";
import { Login, logOut, Me } from "../controllers/Auth.js";

// const router dari express router
const router = express.Router();

// membuat router berdasarkan method dan function yang controller
// fungsinya sama sperti router mvc fw CI / Laravel
router.get("/me", Me);
router.post("/login", Login);
router.delete("/logout", logOut);

export default router;
