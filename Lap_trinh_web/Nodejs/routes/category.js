


module.exports = function (req, res) {
   let query = "SELECT * FROM `products` WHERE category_id ='" + req.params.id + "'";
   db.query (query, (err, result) => {
       res.render('category', {title: 'My Shop',name: 'Products', products: result});
   });
};