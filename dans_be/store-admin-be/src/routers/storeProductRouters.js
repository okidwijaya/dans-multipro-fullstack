const express = require("express");

const storeProductRouter = express.Router();

const useController = require('../controllers/storeProductControllers');

const useMiddleware = require('../middlewares/uploadImages');

storeProductRouter.get('/', useController.getAllProductController);

storeProductRouter.get('/find', useController.getProductController);

storeProductRouter.get('/:id', useController.getProductByKeyIdController);

storeProductRouter.post('/', useMiddleware.uploadMultiPart, useController.addProductController);

storeProductRouter.delete('/:id', useController.deleteProductByKeyIdController);

storeProductRouter.patch('/:id', useController.updateProductController);

module.exports = storeProductRouter;