puts "Seed flowers so recipe can grow."

User.create({username: "cajuncooker", name: "Drew", age: 26})
User.create({username: "cookinmama", name: "Mom", age: 50})
Recipe.create({name: "Grilled Cheese", ingredients: "Bread, Cheese, Butter", description: "Cook the bread with the cheese inside of the sandwich.", user_id: 2})
Recipe.create({name: "Shrimp Poboy", ingredients: "French Bread, Fried Shrimp, Lettuce, Mayo", description: "Put the mayo on the bread with the lettuce and shrimp.", user_id: 1})
Recipe.create({name: "Chicken Salad", ingredients: "Shredded Chicken, Mayo, Pickles", description: "Mix all ingredients in a bowl.", user_id: 2})
Recipe.create({name: "Peanut Butter and Jelly Cheese", ingredients: "Bread, Peanut Butter, Jelly", description: "Put the Peanut Butter on one side of the bread and Jelly on the other then put the two pieces of bread together.", user_id: 1})

puts "All Done Seeding."
