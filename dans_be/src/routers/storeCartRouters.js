const express = require("express");

const storeCartRouter = express.Router();

const useController = require("../controllers/storeCartController");

storeCartRouter.post('/', useController.addProductToCartController);

storeCartRouter.get('/:id', useController.getCartProductController);

module.exports = storeCartRouter;