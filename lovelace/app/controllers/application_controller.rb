class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_basket

  private
    def current_basket
     	if !session[:basket_id].nil?
      		Basket.find_by(id: session[:basket_id])
 	    else
 				basket = Basket.create
				session[:basket_id] = basket.id
 				basket
    	end
    end
end