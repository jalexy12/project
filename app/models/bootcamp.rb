class Bootcamp < ActiveRecord::Base
	has_many :cities, through: :bootcampcoords
	has_many :bootcampimgs
end
