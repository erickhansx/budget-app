# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user_1 = User.create(username: "User 1", email: "test@test.com", password: "test123", password_confirmation: "test123")
user_2 = User.create(username: "User 2", email: "test2@test.com", password: "test123", password_confirmation: "test123")
user_3 = User.create(username: "User 3", email: "test3@test.com", password: "test123", password_confirmation: "test123")

group_1 = Group.create(name: "Group 1", icon: "test", user_id: user_1.id)
group_2 = Group.create(name: "Group 2", icon: "test", user_id: user_1.id)
group_3 = Group.create(name: "Group 3", icon: "test", user_id: user_1.id)


entity_1 = Entity.create(name: "entity 1", amount: 100, user_id: user_1.id, group_id: group_1.id)
entity_2 = Entity.create(name: "entity 2", amount: 200, user_id: user_2.id, group_id: group_1.id)
entity_3 = Entity.create(name: "entity 3", amount: 300, user_id: user_3.id, group_id: group_1.id)
