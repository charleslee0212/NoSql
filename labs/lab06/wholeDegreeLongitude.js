wholeDegreeLongitude = function(city){
  var longitude = Math.trunc(city.location.longitude);
  return longitude;
}
db.system.js.save({_id: 'wholeDegreeLongitude', value: wholeDegreeLongitude})
