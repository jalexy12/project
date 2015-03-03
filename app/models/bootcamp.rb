class Bootcamp < ActiveRecord::Base
	has_and_belongs_to_many :cities
	has_many :bootcampcoords
	has_many :bootcampimgs
end
