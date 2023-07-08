const express = require('express');
const app = express();

const PORT = 3000 || process.env.PORT;
const bodyParser = require('body-parser');

const productRouter = require('./controllers/products');
const cors = require("cors");
app.use(cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(productRouter);


app.listen(PORT, async () => {
    console.log(`Server is running on port ${PORT}`);
});


/*
app.get('/', async (req, res) =>  {
    try {
        const queryResult = await test()
        res.status(200).json({
            message: queryResult, 
        });
    } catch (e) {
        res.status(500).json({
            message: e.message,
        });
    }
});
*/