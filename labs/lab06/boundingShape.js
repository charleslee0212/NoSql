//db.cities.find({name: "London", country: "GB"}) in order to find the longitude and laditude

db.cities.find({"location":
   {$geoWithin:
     {$centerSphere: [[-0.12574, 51.50853], 50]}
   }
 })
