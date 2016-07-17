class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :order
      t.string :name
      t.references :type_test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
