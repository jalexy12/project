class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :agent
      t.string :city
      t.string :link
      t.string :bootcamp

      t.timestamps null: false
    end
  end
end
