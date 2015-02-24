class CreateBootcampimgs < ActiveRecord::Migration
  def change
    create_table :bootcampimgs do |t|
      t.string :url
      t.integer :bootcamp_id

      t.timestamps null: false
    end
  end
end
