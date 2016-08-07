# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

yangon = Category.create(name: 'Yangon')
it = Category.create(name: 'IT')
japan = Category.create(name: 'Japan')


# // quiz creation
quiz = Quiz.create(
  question: "Which language is used to build twitter now?",
  collect: 1
)
quiz.answers << Answer.create(ans_name: "Ruby on Rails", number:1)
quiz.answers << Answer.create(ans_name: "Java", number:2)
quiz.answers << Answer.create(ans_name: "Cobol", number:3)
quiz.answers << Answer.create(ans_name: "Fortran", number:4)
quiz.category = it
quiz.save

quiz = Quiz.create(
  question: "Which is collect command to create new branch?",
  collect: 2
)
quiz.answers << Answer.create(ans_name: "git rebase", number:1)
quiz.answers << Answer.create(ans_name: "git merge", number:2)
quiz.answers << Answer.create(ans_name: "git checkout -b ", number:3)
quiz.answers << Answer.create(ans_name: "git branch", number:4)
quiz.category = it
quiz.save


quiz = Quiz.create(
  question: "Which is Japanese company?",
  collect: 3
)
quiz.answers << Answer.create(ans_name: "Lotteria", number:1)
quiz.answers << Answer.create(ans_name: "MASHIBA", number:2)
quiz.answers << Answer.create(ans_name: "acer", number:3)
quiz.answers << Answer.create(ans_name: "DENSO", number:4)
quiz.category = japan
quiz.save

quiz = Quiz.create(
  question: "Which is the most north area in Japan?",
  collect: 0
)
quiz.answers << Answer.create(ans_name: "Hakodate", number:1)
quiz.answers << Answer.create(ans_name: "Kyusyu", number:2)
quiz.answers << Answer.create(ans_name: "Tokyo", number:3)
quiz.answers << Answer.create(ans_name: "Nagoya", number:4)
quiz.category = japan
quiz.save


quiz = Quiz.create(
  question: "Which is the coolest company in Yangon?",
  collect: 1
)
quiz.answers << Answer.create(ans_name: "HITACHI", number:1)
quiz.answers << Answer.create(ans_name: "CloudSource", number:2)
quiz.answers << Answer.create(ans_name: "HONDA", number:3)
quiz.answers << Answer.create(ans_name: "SONY", number:4)
quiz.category = yangon
quiz.save


quiz = Quiz.create(
  question: "Which is the old name of Yangon?",
  collect: 2
)
quiz.answers << Answer.create(ans_name: "Naypyidaw", number:1)
quiz.answers << Answer.create(ans_name: "Yangoon", number:2)
quiz.answers << Answer.create(ans_name: "Rangoon", number:3)
quiz.answers << Answer.create(ans_name: "Nyangon", number:4)
quiz.category = yangon
quiz.save
