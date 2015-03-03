class CreateBootcampcoords < ActiveRecord::Migration
  def change
    create_table :bootcampcoords do |t|
      t.string :city
      t.integer :lat
      t.integer :lon

      t.timestamps null: false
    end
  end
end
