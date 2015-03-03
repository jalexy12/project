class AddBootcampidToCoordinates < ActiveRecord::Migration
  def change
    add_column :bootcampcoords, :bootcamp_id, :integer
  end
end
