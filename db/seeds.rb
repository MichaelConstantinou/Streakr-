# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'user@user.com', password: '123456', name: 'User')
User.create!(email: 'user2@user.com', password: '123456', name: 'User2')
Streak.create!(user_id: 1, aim: '10 downward dogs', title: 'Yoga challenge 1', created_at: "2018-03-26 09:29:20", frequency: 4)
Streak.create!(user_id: 1, aim: '10 sun salutations', title: 'Yoga challenge 2',  created_at: '2018-03-24 09:29:20', frequency: 6)
Streak.create!(user_id: 1, aim: '10 warrior pose', title: 'Yoga challenge 3', created_at: '2018-03-20 09:29:20', frequency: 8)
Streak.create!(user_id: 2, aim: 'Speedwalk for one mile', title: 'Speedwalk challenge', created_at: '2018-03-23 09:29:20', frequency: 3)
Chain.create!(streak_id: 1, consecutive_days: 8, chain_ended: "2018-03-20")
Chain.create!(streak_id: 1, consecutive_days: 3, chain_ended: "2018-03-24")
Chain.create!(streak_id: 1, consecutive_days: 2, chain_ended: "2018-03-27")
Chain.create!(streak_id: 1, consecutive_days: 2, chain_ended: "2018-03-30")
Chain.create!(streak_id: 2, consecutive_days: 4, chain_ended: "2018-03-15")
Chain.create!(streak_id: 2, consecutive_days: 9, chain_ended: "2018-03-26")
Chain.create!(streak_id: 3, consecutive_days: 9, chain_ended: "2018-02-25")
Chain.create!(streak_id: 4, consecutive_days: 9, chain_ended: "2018-02-26")