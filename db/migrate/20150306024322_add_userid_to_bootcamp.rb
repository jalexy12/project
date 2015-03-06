class AddUseridToBootcamp < ActiveRecord::Migration
  def change
  	add_column :users, :bootcamp_id, :integer
  end
end
