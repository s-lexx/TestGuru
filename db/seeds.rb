# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Categories
Category.create([
                  { title: 'Frontend' },
                  { title: 'Backend' }
                ])
# Users
User.create([
              { name: 'User1' },
              { name: 'User2' }
            ])
# Tests
Test.create([
              { title: 'HTML', category_id: 1, author_id: 1 },
              { title: 'CSS', level: 1, category_id: 1, author_id: 2 },
              { title: 'Ruby', level: 2, category_id: 2, author_id: 1 }
            ])
# Questions
Question.create([
                  { body: "Какие основные теги используются в HTML?", test_id: 1 },
                  { body: "Как вставить изображение на веб-страницу с помощью HTML?", test_id: 1 },
                  { body: "Как изменить цвет текста с помощью свойств CSS?", test_id: 2 },
                  { body: "Как использовать медиазапросы в CSS для создания адаптивного дизайна?", test_id: 2 },
                  { body: "Какие типы данных существуют в Ruby?", test_id: 3 },
                  { body: "Как работают условные конструкции в Ruby и какие виды ветвлений существуют?", test_id: 3 }
                ])
# Answers
Answer.create([
                { body: "Правильный ответ по HTML?", question_id: 1, correct: true },
                { body: "Неправильный ответ по HTML?", question_id: 2 },
                { body: "Правильный ответ по CSS?", question_id: 3, correct: true },
                { body: "Неправильный ответ по CSS?", question_id: 4 },
                { body: "Правильный ответ по Ruby?", question_id: 5, correct: true },
                { body: "Неправильный ответ по Ruby", question_id: 6 },
              ])
# Results
Result.create([
                { status: "Пройден", user_id: 2, test_id: 1 },
                { status: "Пройден", user_id: 1, test_id: 2 },
                { status: "Не завершен", user_id: 2, test_id: 3 },
              ])