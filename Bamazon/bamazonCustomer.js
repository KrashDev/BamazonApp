var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  // Your username
  user: "root",
  // Your password
  password: "P@p3r_p1@n3s",
  database: "bamazon"
});
connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  readProducts();
});

function readProducts() {
  console.log("Selecting all products...\n");
  connection.query("SELECT id, product_name, price  FROM products", function(err, res) {
    if (err) throw err;
    // Log all results of the SELECT statement
    console.log(res);

      var prompt = require('prompt');

      // Start the prompt 
      prompt.start();
      // Get two properties from the user: item and quantity
      prompt.get(['item', 'quantity'], function (err, result) {
        // Log the results. 
        console.log('Command-line input received:');
        console.log(' So you would like: ' + result.quantity + " " + result.item + "'s");
        console.log(' That will cost you' + result.quantity * price);
      });

  });
      // connection.end();
}