class AddAnswerReferencesToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :answers, :questions
  end
end
