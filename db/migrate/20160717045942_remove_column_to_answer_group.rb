class RemoveColumnToAnswerGroup < ActiveRecord::Migration
  def change
    # remove_reference :answer_groups, :mchat_test, index: true, foreign_key: true
  end
end
