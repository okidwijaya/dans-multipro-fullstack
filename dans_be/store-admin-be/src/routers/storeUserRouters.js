const express = require("express");

const storeUserRouter = express.Router();

const useController = require("../controllers/storeUserController");

const useMiddleware = require("../middlewares/storeUserMiddleware");

storeUserRouter.post(
  "/register",
  useMiddleware.checkExistingEmail,
  useController.userRegistertrationController
);

storeUserRouter.post("/login", useController.userLoginController);

storeUserRouter.get('/users', useController.usersController)

module.exports = storeUserRouter;
