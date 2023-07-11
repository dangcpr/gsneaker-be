const db = require('../helpers/db')
const conn = require('../helpers/db')

module.exports = {
    getAllProduct : () => {
        return conn.any('SELECT * FROM "PRODUCTS"');
    }
} 
