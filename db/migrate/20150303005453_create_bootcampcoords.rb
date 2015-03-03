class CreateBootcampcoords < ActiveRecord::Migration
  def change
    create_table :bootcampcoords do |t|
      t.integer :city_id
      t.float :lat
      t.float :lon
      t.timestamps null: false
    end
  end
end
