class CreateTypeTests < ActiveRecord::Migration
  def change
    create_table :type_tests do |t|
      t.string :name
      t.text :instruction

      t.timestamps null: false
    end
  end
end
