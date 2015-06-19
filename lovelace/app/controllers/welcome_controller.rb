class WelcomeController < ApplicationController
  
  def homepage
  	@products = Product.all
  end

  def products_catalog
    @products = Product.all
  end

  def faq
  end

  def services
  end

  def contact
  end
end
