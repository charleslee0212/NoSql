add_order = function(user, recipe){
  var string = "";
  var ingredients = db.recipes.find({name: recipe}, {_id: 0, ingredients: 1})[0].ingredients;
  for (var i in ingredients){
    var name = ingredients[i][0];
    var quantity = db.inventory.find({name: name}, {_id: 0, quantity: 1})[0].quantity;
    var amount = ingredients[i][1];
    if(quantity < amount){
      return "Not enough ingredients";
    }
  }
  for (var i in ingredients){
    var name = ingredients[i][0];
    var quantity = db.inventory.find({name: name}, {_id: 0, quantity: 1})[0].quantity;
    var amount = ingredients[i][1];
    var newQ = quantity - amount;
    db.inventory.update({name: name}, {$set:{quantity: newQ}});
  }
  var d = new Date();
  db.orders.insert({
    user: user,
    time: d,
    recipe: recipe
  });
  return "Success: Order is placed";
}
