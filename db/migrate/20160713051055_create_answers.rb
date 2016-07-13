class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
