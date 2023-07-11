const express = require('express');
const productModel = require('../models/products');
const deleteNull = require('../helpers/deleteNull');

const productRouter = express.Router();

productRouter.get('/products', async (req, res) => {
    try {
        const queryResult = await productModel.getAllProduct()
        result = deleteNull.deleteNull(queryResult);
        res.status(200).json({
            'shoes': result
        });
    } catch (e) {
        res.status(500).json({
            message: e.message,
        });
    }
})

module.exports = productRouter;