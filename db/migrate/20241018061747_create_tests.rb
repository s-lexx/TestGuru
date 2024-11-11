class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, null: false, default: 1
      t.references :category, null: false, foreign_key: true
      t.references :author_id, null: false, foreign_key: to_table

      t.timestamps
    end
  end
end
