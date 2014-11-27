class Stime < ActiveRecord::Base
	belongs_to :swimmer 
	belongs_to :stroke
	belongs_to :meet
end
