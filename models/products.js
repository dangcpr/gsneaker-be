const db = require('../helpers/db')

module.exports = {
    getAllProduct : async() => {
        return db().query('SELECT * FROM "PRODUCTS"');
    }
} 
