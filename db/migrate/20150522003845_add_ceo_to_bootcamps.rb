class AddCeoToBootcamps < ActiveRecord::Migration
  def change
    add_column :bootcamps, :ceo, :string
  end
end
