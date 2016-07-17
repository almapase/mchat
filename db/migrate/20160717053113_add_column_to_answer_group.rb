class AddColumnToAnswerGroup < ActiveRecord::Migration
  def change
    add_reference :answer_groups, :question, index: true, foreign_key: true
  end
end
