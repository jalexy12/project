class Neighborhood < ActiveRecord::Base
	belongs_to :cities
	has_many :neighborhoodimgs
end
