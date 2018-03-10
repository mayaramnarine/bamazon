var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: "3000",
  user: "root",
  password: "root",
  database: "bamazon"
});

connection.connect(function(err){
  console.log("working?");

   makeTable();
})

  var makeTable = function(){
    connection.query("SELECT * FROM products", function(err,results){
      for(var i=0; i<results.length; i++){
        console.log(results[i].item_id+" || "+results[i].product_name+" || "+results[i].department_name+" || "+results[i].price+" || "+results[i].stock_quantity+"/n");
      }
    })
  }
