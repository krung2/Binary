const express = require("express");
const bodyPraser = require("body-parser");
const cors = require("cors");

const app = express();

app.use(bodyPraser.urlencoded({ extended: true }));
app.use(bodyPraser.json());
app.use(cors());

const router = require('./router');

app.use('/static', express.static('public'));
app.use('/api', router);

app.listen(8000, () => {
    console.log("server start!");
})