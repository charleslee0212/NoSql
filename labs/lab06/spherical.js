db.places.insert( {
    name: "Central Park",
   location: { type: "Point", coordinates: [ -73.97, 40.77 ] },
   category: "Parks"
} );
db.places.insert( {
   name: "Sara D. Roosevelt Park",
   location: { type: "Point", coordinates: [ -73.9928, 40.7193 ] },
   category: "Parks"
} );
db.places.insert( {
   name: "Polo Grounds",
   location: { type: "Point", coordinates: [ -73.9375, 40.8303 ] },
   category: "Stadiums"
} );


db.places.createIndex( { location: "2dsphere" } )
