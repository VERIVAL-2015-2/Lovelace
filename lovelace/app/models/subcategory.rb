class Subcategory < ActiveRecord::Base
					  
	belongs_to :category

	has_many :products

	validates :name, presence: true,
					 uniqueness: true, 
	                 length: {maximum:  100}

	validates :description,  
	                        length: {maximum:  150}

end
