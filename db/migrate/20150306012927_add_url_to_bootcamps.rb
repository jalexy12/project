class AddUrlToBootcamps < ActiveRecord::Migration
  def change
  	add_column :bootcamps, :url, :string
  end
end
