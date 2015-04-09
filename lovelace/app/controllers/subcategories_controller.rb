class SubcategoriesController < ApplicationController

	def new
	end

	def create
		@subcategory = Subcategory.new(subcategory_params)
 
  		@subcategory.save
  		redirect_to @subcategory
	end

	private
  		def subcategory_params
    		params.require(:subcategory).permit(:name, :description)
 		 end

end
