class BootcampCityJoinTable < ActiveRecord::Migration
  def change
    create_join_table :bootcamps, :cities do |t|
      t.index [:bootcamp_id, :city_id]
      t.index [:city_id, :bootcamp_id]
    end
  end
end
