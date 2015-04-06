class ProductsController < ApplicationController
	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params[:products])
		if @product.save
			redirect_to root_path
		end
	end
end
