const express = require('express');
const app = express();

const PORT = 3000 || process.env.PORT;

const productRouter = require('./controllers/products');
const cors = require("cors");
app.use(cors());

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(productRouter);


app.listen(PORT, async () => {
    console.log(`Server is running on port ${PORT}`);
});


/*
app.get('/', async (req, res) =>  {
    try {
        res.status(200).json({
            message: req.query.name + req.query.age, 
        });
    } catch (e) {
        res.status(500).json({
            message: e.message,
        });
    }
});
*/