class RemoveImagesFromBootcamps < ActiveRecord::Migration
  def change
  	remove_column :bootcamps, :image
  end
end
