class City < ActiveRecord::Base
	has_many :cityimgs
	has_many :neighborhoods
	has_and_belongs_to_many :bootcamps
end
