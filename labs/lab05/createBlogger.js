mongo --host nosql-mongodb blogger

db.articles.insert({author_name: "bob", email: "bob@email.com", creation_date: ISODate("2020-04-28"), text: "blah blah blah blah blah blah blah blah blah blah"})
