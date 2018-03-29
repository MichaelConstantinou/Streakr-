# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'user@user.com', password: '123456', name: 'User')
User.create!(email: 'user2@user.com', password: '123456', name: 'User2')
Streak.create!(user_id: 1, aim: '10 downward dogs', title: 'yoga', created_at: "2018-03-26 09:29:20", frequency: 4)
Streak.create!(user_id: 1, aim: '10 sun salutations', title: 'yoga', created_at: '2018-03-24 09:29:20', frequency: 6)
Streak.create!(user_id: 1, aim: '10 warrior pose', title: 'yoga', created_at: '2018-03-20 09:29:20', frequency: 8)
Streak.create!(user_id: 2, aim: 'speedwalk for one mile', title: 'speedwalk', created_at: '2018-03-23 09:29:20', frequency: 3)