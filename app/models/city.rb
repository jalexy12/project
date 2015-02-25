class City < ActiveRecord::Base
	has_many :cityimgs
	has_many :neighborhoods
	has_many :bootcamps
end
