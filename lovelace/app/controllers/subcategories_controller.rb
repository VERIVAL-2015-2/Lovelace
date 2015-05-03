class SubcategoriesController < ApplicationController

	def index
    	@subcategory = Subcategory.all
  	end

	def show
		@subcategory = Subcategory.find(params[:id])
		@products = subcategory.products
	end

	def new
		@subcategory = Subcategory.new
	end

	def edit
  		@subcategory = Subcategory.find(params[:id])
	end

	def create
		@subcategory = Subcategory.new(subcategory_params)
 
  		if @subcategory.save
			redirect_to @subcategory, notice: 'Subcategoria criada com sucesso!'
		else
			render 'new'
		end
	end

	def update
	  @subcategory = Subcategory.find(params[:id])
	 
	  if @subcategory.update(subcategory_params)
	    redirect_to @subcategory, notice: 'Subcategoria alterada com sucesso!'
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @subcategory = Subcategory.find(params[:id])
	  @subcategory.destroy
	 
	  	redirect_to subcategories_url, notice: 'Subcategoria deletada com sucesso!'
	end

	private
  		def subcategory_params
    		params.require(:subcategory).permit(:name, :description)
 		 end

end
