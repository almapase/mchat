class AddColumnToTypeTest < ActiveRecord::Migration
  def change
    add_column :type_tests, :title, :text
  end
end
