"use strict"

const express = require("express");

let app = express()

app.get("/", (req, res) => {
    res.send("goodbye cruel world");
});

app.listen(3000, function() {
    console.log("listening");
})
