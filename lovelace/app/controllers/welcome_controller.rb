class WelcomeController < ApplicationController
  before_action :authenticate_user!, :except => [:hompeage, :products_catalog, :faq, :services, :contact]
  
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
