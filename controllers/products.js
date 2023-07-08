const express = require('express');
const productModel = require('../models/products');
const delete_null = require('../helpers/delete_null');

const productRouter = express.Router();

productRouter.get('/products', async (req, res) => {
    try {
        const queryResult = await productModel.getAllProduct()
        queryResult.rows = delete_null.deleteNull(queryResult.rows);
        res.status(200).json({
            'shoes': queryResult.rows
        });
    } catch (e) {
        res.status(500).json({
            message: e.message,
        });
    }
})

module.exports = productRouter;