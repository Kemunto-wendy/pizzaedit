# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'start'
10.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id: rand(1..4),
        restaurant_id: rand(1..5)
    )
end

    Pizza.create(name: 'Barbeque Pizza', ingredients: 'Onions, Cheese, Olive oil, baked piece of dough')
    Pizza.create(name: 'Chicken Peperoni', ingredients: 'Tomato sauce, Cheese, Artichokes, Roasted bell pepper, Black olives, Onions, Oregano')
    Pizza.create(name: 'Egg Cavia', ingredients: 'Mozzarella, Caviar, Egg, Dill, Black pepper')
    Pizza.create(name: 'Lemonade', ingredients:'Tomato sauce, Cheese, Russian ham, Pineapple, Herbs')

    Restaurant.create(name: 'Kempinski', address:'Nairobi 00100')
    Restaurant.create(name: 'Kienyeji store', address:'Ngong Road 13456')
    Restaurant.create(name: 'Manhattan', address:'NairobiCBD 56889')
    Restaurant.create(name: 'Avenida', address:'Nairobi 10321')

puts 'end'
