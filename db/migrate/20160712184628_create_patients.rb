class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :rut
      t.string :dv
      t.integer :age
      t.string :sex

      t.timestamps null: false
    end
  end
end
