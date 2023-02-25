# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user_1 = User.create(username: "test", email: "test@test.com", password: "test123", password_confirmation: "test123")
user_2 = User.create(username: "test2", email: "test2@test.com", password: "test123", password_confirmation: "test123")
user_3 = User.create(username: "test3", email: "test3@test.com", password: "test123", password_confirmation: "test123")

group_1 = Group.create(name: "Test", icon: "test", user_id: user_1.id)

entity_1 = Entity.create(name: "Test", amount: 100, user_id: user_1.id, group_id: group_1.id)
entity_2 = Entity.create(name: "Test2", amount: 200, user_id: user_2.id, group_id: group_1.id)
entity_3 = Entity.create(name: "Test3", amount: 300, user_id: user_3.id, group_id: group_1.id)