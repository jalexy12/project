class AddUseridToBootcamps < ActiveRecord::Migration
  def change
  	 add_column :bootcamps, :user_id, :integer
  end
end
