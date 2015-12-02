class CategoriesController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :new, :create]

    def index
		@category = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		if @category.save
			redirect_to @category, notice: 'Categoria criada com sucesso!'
		else
			render :new
		end
	end

	def show
		@category = Category.find(params[:id])
		@subcategories = category.subcategories
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
    @category = Category.find(params[:id])
      if @category.update(category_params)
        redirect_to @category, notice: 'Categoria alterada com sucesso!'
      else
        render :edit
      end
  end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
			redirect_to categories_url, notice: 'Categoria deletada com sucesso!'
	end

	private 
	def category_params
		params.require(:category).permit(:name, :description)
	end

end