# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Aaron", password: "password1", first_name: "Aaron", last_name: "Gregg")
Score.create(user_id: 1, mode: "Quiz", correct: 18, total: 20)
Score.create(user_id: 1, mode: "Quiz", correct: 15, total: 20)
Score.create(user_id: 1, mode: "Quiz", correct: 20, total: 20)
