# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Smoothie.destroy_all
User.destroy_all
Favorite.destroy_all

Smoothie.create(name:"Kale and Ginger", ingredients: "Kale, Ginger, Spinach, Protein Powder, Almond Milk", likes: 5, category: "post workout", created_by: "Megan", image:"https://www.daily-harvest.com/static/img/products/ginger-greens/a17-ging/product-shot-ingredients@3x.jpeg")
Smoothie.create(name:"Strawberry and Peach", ingredients: "Strawberries, Peach, Chia Seeds, Protein Powder, Almond Milk", likes: 10, category: "preworkout", created_by: "Leigh", image: "https://www.daily-harvest.com/static/img/products/strawberry-peach/04-straw/product-shot-ingredients@3x.jpeg")

User.create(username:"Megan")
User.create(username:"Leigh")

Favorite.create(user_id:1, smoothie_id:1)
Favorite.create(user_id:2, smoothie_id:2)
