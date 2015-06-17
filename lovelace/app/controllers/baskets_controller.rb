class BasketsController < ApplicationController
  before_action :set_basket, only: [:show, :edit, :update, :destroy]

  def index
    @baskets = Basket.all
  end

  def show
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
    @basket.destroy

    redirect_to baskets_url, notice: 'Basket was successfully destroyed.' 
      
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
