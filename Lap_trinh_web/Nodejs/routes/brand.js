


const express = require('express');
const app = express();

// module.exports = function (req, res) {
//  let query = "SELECT * from test;";
//    db.query (query, (err, result) => {
//         res.render('brand',{title: "My Shop", name: result.brand_name, brand: result});
        
//    });
// };


module.exports = {
     brand: function (req, res) {
         let query = "SELECT * FROM test";
         db.query(query, (err, result) => {
             res.render('brand', {title: "My Shop", brand:result, name: result.brand_name,});
         });
     },
 };

