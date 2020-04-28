db.towns.find({name: /e/i, famousFor: {$in: ['food', 'beer']}})
