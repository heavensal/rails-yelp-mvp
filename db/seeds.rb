# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Review.create(rating: 5, content: "Super bon", restaurant_id: 1)
Review.create(rating: 3, content: "Super moyen", restaurant_id: 1)
Review.create(rating: 1, content: "Super pas bon", restaurant_id: 1)