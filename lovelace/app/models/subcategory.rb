class Subcategory < ActiveRecord::Base

	validates :name, presence: true, 
	                 length: {maximum:  100}

	validates :description, presence: true, 
	                        length: {maximum:  400}

end
