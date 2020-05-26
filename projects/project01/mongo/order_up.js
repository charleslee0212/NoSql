order_up = function(num){
  var start = new Date().getTime();
  for(var i = 0; i < num; i++){
    var cursor_u = db.users.aggregate([{$sample: {size: 1}}]);
    var user = cursor_u.toArray()[0].email_address;
    var cursor_i = db.recipes.aggregate([{$sample: {size: 1}}]);
    var item = cursor_i.toArray()[0].name;
    var order = add_order(user, item);
    print("ORDER #" + i + ": " + "USER: " + user + " | ITEM: " + item + " | STATUS: " + order);
  }
  var end = new Date().getTime();;

  return "TIME: " + (end - start) + " milliseconds";
}
