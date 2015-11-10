# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(question_title: "Where a test question?", question_content: "Where a test question?", question_author: "Jill Doe")
Question.create(question_title: "When a test question?", question_content: "When a test question?", question_author: "Jim Doe")
Question.create(question_title: "Why a test question?", question_content: "Why a test question?", question_author: "John Doe")
Question.create(question_title: "How a test question?", question_content: "How a test question?", question_author: "Jane Doe")
