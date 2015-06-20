class Category < ActiveRecord::Base

	has_many :subcategories

	has_many :products, :through => :subcategories	

	validates :name, presence: true, 
					 uniqueness: true,
	                 length: {maximum:  50}
	                 
	validates :description,  
	                        length: {maximum:  150}
end
