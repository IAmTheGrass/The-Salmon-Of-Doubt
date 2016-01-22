Customer.delete_all
Product.delete_all

Customer.create!([
 	{id: 1, name: "Buddy", company: "Awsome Inc", userClass: "Lowly Surf" },
	{id: 2, name: "Guy", company: "Company Inc", userClass: "Lowly Surf" },
	{id: 3, name: "Bob", company: "Bob Inc", userClass: "Lowly Surf" }

])

Product.create!([
 	{id: 1, name: "stuff", description: "some great stuff for you", baseCost: 100 },
	{id: 2, name: "things", description: "these things are awsome", baseCost: 200 },
	{id: 3, name: "other", description: "other stuff, thats ok to", baseCost: 300 }

])