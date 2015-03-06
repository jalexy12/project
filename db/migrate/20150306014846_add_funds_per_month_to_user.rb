class AddFundsPerMonthToUser < ActiveRecord::Migration
  def change
  	add_column :users, :funds_per_month, :integer
  end
end
