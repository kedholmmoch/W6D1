# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'one_4_u')
User.create(username: 'one_4_me')
User.create(username: 'one_4_them')

Poll.create(title: "Lunch", user_id: 1)
Poll.create(title: "Dinner", user_id: 2)
Poll.create(title: "Breakfast", user_id: 1)

Question.create(body: "What's for lunch?", poll_id: 1)
Question.create(body: "What's for dinner?", poll_id: 2)
Question.create(body: "What's for breakfast?", poll_id: 3)

AnswerChoice.create(option: "eggs", question_id: 1)
AnswerChoice.create(option: "pizza", question_id: 1)
AnswerChoice.create(option: "fries", question_id: 1)

AnswerChoice.create(option: "eggs", question_id: 2)
AnswerChoice.create(option: "pizza", question_id: 2)
AnswerChoice.create(option: "fries", question_id: 2)

AnswerChoice.create(option: "eggs", question_id: 3)
AnswerChoice.create(option: "pizza", question_id: 3)
AnswerChoice.create(option: "fries", question_id: 3)

Response.create(user_id: 1, answer_choice_id: 2)
Response.create(user_id: 2, answer_choice_id: 3)
Response.create(user_id: 3, answer_choice_id: 1)



