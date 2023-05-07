import express from "express";
import {
  getProducts,
  getProductById,
  createProduct,
  updateProduct,
  deleteProduct,
} from "../controllers/Products.js";
import { verifyUser } from "../middleware/AuthUser.js";

// const router dari express router
const router = express.Router();

// membuat router berdasarkan method dan function yang controller
// fungsinya sama sperti router mvc fw CI / Laravel
router.get("/products", verifyUser, getProducts);
router.get("/products/:id", verifyUser, getProductById);
router.post("/products", verifyUser, createProduct);
router.patch("/products/:id", verifyUser, updateProduct);
router.delete("/products/:id", verifyUser, deleteProduct);

export default router;
