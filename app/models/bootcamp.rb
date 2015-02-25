class Bootcamp < ActiveRecord::Base
	has_many_and_belongs_to_many :cities
	has_many :bootcampimgs
end
