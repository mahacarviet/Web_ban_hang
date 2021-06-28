

const express = require('express');
const app = express();

const {about, contact} = require('./routes/pages');
const {detail} = require('./routes/detail');

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

app.listen(8080);


app.get('/', function (req, res) {
   res.sendFile('./views/index.html', { root: __dirname });
});

//Routing
app.get("/detail",detail);
app.get("/about",about);
app.get("/contact",contact);
 

//Template Engine
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.set('views', __dirname + "/views");

app.use(express.static(__dirname + "/public"));

const mysql = require('mysql');
const db = mysql.createConnection ({
   host: 'localhost',
   user: 'root',
   password: 'admin',
   database: 'myshop'
});

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to database');
 });
 global.db = db;

 app.get("/category/:id", require('./routes/category'));

//  app.get("/product/:id", require('./routes/product'));
const {showProduct,editProduct,editProductSubmit} = require('./routes/product');
app.get("/product/:id",showProduct);
app.get("/product/edit/:id",editProduct);
app.post("/product/edit/:id",editProductSubmit) ;

// app.get("/brand", require('./routes/brand'));

const brand = require('./routes/brand');
app.get('/brand', brand.brand);

