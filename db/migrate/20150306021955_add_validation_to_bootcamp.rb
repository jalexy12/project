class AddValidationToBootcamp < ActiveRecord::Migration
  def change
  	add_column :bootcamps, :approved, :boolean
  end
end
