


// module.exports = function (req, res) {
//  let query = "SELECT product_id, product_name, products.brand_id, products.category_id, model_year, list_price, brand_name, category_name FROM `products` join `brands` on `products`.brand_id = `brands`.brand_id join `categories` on `products`.category_id = `categories`.category_id  WHERE product_id ='" + req.params.id + "'";
//    db.query (query, (err, result) => {
//        res.render('product',{title: "My Shop", name: result[0].product_name, product: result[0]});
//    });
// };


module.exports = {
  showProduct: function (req, res) {
      let query = "SELECT * FROM `products` join `brands` on `products`.brand_id = `brands`.brand_id join `categories` on `products`.category_id = `categories`.category_id  WHERE product_id ='" + req.params.id + "'";
      db.query(query, (err, result) => {
          res.render('product', {title: "My Shop", name: result[0].product_name, product: result[0]});
      });
  },
  editProduct: function (req, res) {
      let query = "SELECT * FROM `products` WHERE product_id ='" + req.params.id + "'";
      db.query(query, (err, result) => {
          res.render('product_form', {title: "My Shop", name: "Edit", product: result[0]});
      });
  },
  editProductSubmit: function (req, res) {
      let query = "UPDATE `products` set product_name ='" + req.body.product_name + "'" +
          ",brand_id ='" + req.body.brand_id + "'" +
          ",category_id ='" + req.body.category_id + "'" +
          ",model_year ='" + req.body.model_year + "'" +
          ",list_price ='" + req.body.list_price + "'" +
          " WHERE product_id ='" + req.params.id + "'";
      db.query(query, (err, result) => {
          res.redirect('/product/' + req.params.id);
      });
  }
};