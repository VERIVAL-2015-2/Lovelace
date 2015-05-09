class WelcomeController < ApplicationController
  
  def homepage
  	@products = Product.all
  end

  def listofproducts
    @products = Product.all
  end

  def details
    
  end

  /def fresherproducts
  	@product = Product.all
  	time = 0
  	earlierproduct [0, 0, 0]
  	while |product|
  		if time > @product.created_at 
  			earlierproduct[0] = @product.created_at
  			if earlierproduct[0] > earlierproduct[1]
  				earlierproduct[1] = earlierproduct [0]  				
  			elsif earlierproduct[0] > earlierproduct [2]
  				earlierproduct[2] = earlierproduct[0]
  			end

  	end
  */	
  
end
