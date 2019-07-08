# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Game.destroy_all


tess = User.create(username: "Tess")
carla = User.create(username: "Carla")
lorena = User.create(username: "Lorena")

game1 = Game.create(user_id: 1, click_total: 50)
game2 = Game.create(user_id: 1, click_total: 75)
game3 = Game.create(user_id: 2, click_total: 150)
game4 = Game.create(user_id: 3, click_total: 250)
