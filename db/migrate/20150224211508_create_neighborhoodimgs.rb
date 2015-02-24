class CreateNeighborhoodimgs < ActiveRecord::Migration
  def change
    create_table :neighborhoodimgs do |t|
      t.string :url
      t.integer :neighborhood_id

      t.timestamps null: false
    end
  end
end
