class CreateCityimgs < ActiveRecord::Migration
  def change
    create_table :cityimgs do |t|
      t.string :url
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
