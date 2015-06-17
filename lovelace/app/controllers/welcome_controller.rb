class WelcomeController < ApplicationController
  
  def homepage
  	@products = Product.all
  end

  def products_catalog
    @products = Product.all
  end

  def details
    
  end  
end
