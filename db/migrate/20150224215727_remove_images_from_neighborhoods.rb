class RemoveImagesFromNeighborhoods < ActiveRecord::Migration
  def change
  	remove_column :neighborhoods, :image
  end
end
