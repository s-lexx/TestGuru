class AddQuestionsReferenceToTests < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :questions, :tests
  end
end
