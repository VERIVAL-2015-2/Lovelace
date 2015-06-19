class BasketsController < ApplicationController
  before_action :set_basket, only: [:show, :edit, :update, :destroy]

  def index
    @baskets = Basket.all
  end

  def show
    begin
      @basket = Basket.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to welcome_url, notice: 'Carrinho inválido'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @basket }
      end
    end
  end

  def new
    @basket = Basket.new
  end

  def edit
  end

  def create
    @basket = Basket.new(basket_params)

    if @basket.save
      redirect_to @basket, notice: 'Basket was successfully created.' 

    else
      render :new 

    end
  end

  def update

    if @basket.update(basket_params)
      redirect_to @basket, notice: 'Basket was successfully updated.' 
    
    else
      render :edit 
      
    end
  end

  def destroy
    @basket = current_cart
    @basket.destroy
    session[:basket_id] = nil
    respond_to do |format|
      format.html { redirect_to(welcome_url, :notice => 'Your cart is currently empty') }
      format.xml { head :ok }
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket
      @basket = Basket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basket_params
      params[:basket]
    end
end
