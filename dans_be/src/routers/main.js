const express = require("express");
const path = require("path");

const mainRouter = express.Router();

const welcomeRouter = require("./welcome");
const storeUserRouter = require("./storeUserRouters");
const storeProductRouter = require("./storeProductRouters");
const storeCollectionRouter = require("./storeCollectionRouter");
const storeCartRouter = require("./storeCartRouters");
const storeTransactionRouter = require("./storeTransactionRouters");

mainRouter.use(express.static(path.join(__dirname, 'public')));

mainRouter.use("/welcome", welcomeRouter);
mainRouter.use("/user", storeUserRouter);
mainRouter.use("/products", storeProductRouter);
mainRouter.use("/collections", storeCollectionRouter);
mainRouter.use("/cart", storeCartRouter);
mainRouter.use("/transaction", storeTransactionRouter);

mainRouter.get("/", (request, response) => {
  response.redirect("welcome");
});

// mainRouter.get("/", (request, response) => {
//   response.sendFile(path.join(__dirname, 'public', 'index.html'));
// });

module.exports = mainRouter;