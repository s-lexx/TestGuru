# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Categories
frontend = Category.find_or_create_by(title: 'Frontend')
backend = Category.find_or_create_by(title: 'Backend')

# Users
john = User.find_or_create_by(name: 'John')
james = User.find_or_create_by(name: 'James')

# Tests
html = Test.find_or_create_by(title: 'HTML', category_id: frontend.id, author_id: john.id)
css = Test.find_or_create_by(title: 'CSS', level: 1, category_id: frontend.id, author_id: james.id)
ruby = Test.find_or_create_by(title: 'Ruby', level: 2, category_id: backend.id, author_id: john.id)

# Questions
[
 { body: "Какие основные теги используются в HTML?", test_id: html.id },
 { body: "Как вставить изображение на веб-страницу с помощью HTML?", test_id: html.id },
 { body: "Как изменить цвет текста с помощью свойств CSS?", test_id: css.id },
 { body: "Как использовать медиазапросы в CSS для создания адаптивного дизайна?", test_id: css.id },
 { body: "Какие типы данных существуют в Ruby?", test_id: ruby.id },
 { body: "Как работают условные конструкции в Ruby и какие виды ветвлений существуют?", test_id: ruby.id }
].each { |question| Question.find_or_create_by(question) }


# Answers
[html,css,ruby].each do |test|

  Question.where(test_id: test.id).each_with_index do |question, index|

    ['Правильный', 'Неправильный', 'Другой неправильный'].each do |answer|
      Answer.find_or_create_by({ body: "#{answer} ответ по #{test.title} - #{index + 1}", question_id: question.id })
    end

  end

end

Answer.where("body LIKE ?", "Правильный%").update_all(correct: true)

# Results
[
 { status: "Пройден", user_id: james.id, test_id: html.id },
 { status: "Пройден", user_id: john.id, test_id: css.id },
 { status: "Не завершен", user_id: james.id, test_id: ruby.id }
].each { |result| Result.find_or_create_by(result) }



