class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, null: false
      t.integer :category_id, null: false
      t.string :author, null: false

      t.timestamps
    end

    change_column_default :tests, :level, 1

  end
end
