class CreateMchatTests < ActiveRecord::Migration
  def change
    create_table :mchat_tests do |t|
      t.integer :order
      t.string :question

      t.timestamps null: false
    end
  end
end
