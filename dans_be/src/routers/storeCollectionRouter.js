const express = require("express");

const storeCollectionRouter = express.Router();

const useController = require('../controllers/storeCollectionController');

storeCollectionRouter.get('/', useController.getAllCollectionController);

module.exports = storeCollectionRouter;