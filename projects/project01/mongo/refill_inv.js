refill_inv = function(){
  db.inventory.updateMany({}, {$set:{quantity: 1000}});
}
