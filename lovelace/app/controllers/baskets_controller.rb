class BasketsController < ApplicationController
	def index
		@products = Product.all
	end
end
