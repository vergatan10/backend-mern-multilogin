import express from "express";
import {
  getUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
} from "../controllers/Users.js";
import { verifyUser, adminOnly } from "../middleware/AuthUser.js";

// const router dari express router
const router = express.Router();

// membuat router berdasarkan method, memberikan middleware, memberikan fungsi controller (mirip CI / Laravel)
// memberikan middleware verifyUser mencegah guest mengakses endpoint
// memberikan middleware adminOnly pada router mencegah user akses endpoint
router.get("/users", verifyUser, adminOnly, getUsers);
router.get("/users/:id", verifyUser, adminOnly, getUserById);
router.post("/users", verifyUser, adminOnly, createUser);
router.patch("/users/:id", verifyUser, adminOnly, updateUser);
router.delete("/users/:id", verifyUser, adminOnly, deleteUser);

export default router;
