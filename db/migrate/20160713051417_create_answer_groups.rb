class CreateAnswerGroups < ActiveRecord::Migration
  def change
    create_table :answer_groups do |t|
      t.boolean :option
      # t.references :mchat_test, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
