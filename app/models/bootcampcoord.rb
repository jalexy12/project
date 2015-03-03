class Bootcampcoord < ActiveRecord::Base
	belongs_to :bootcamp
	belongs_to :city
end
