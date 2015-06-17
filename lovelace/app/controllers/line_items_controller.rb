class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  def index
    @line_items = LineItem.all
  end

  def show
  end

  def new
    @line_item = LineItem.new
  end

  def edit
  end

  def create
    @basket = current_basket
    product = Product.find(params[:product_id])
    @line_item = @basket.line_items.build(:product => product)

    if @line_item.save
      redirect_to @line_item.basket, :notice => 'Linha de item criada com sucesso.'

    else
      ...

    end
  end

  def update

    if @line_item.update(line_item_params)
      redirect_to @line_item, notice: 'Linha de item editada com sucesso.'

    else
      render :edit 
      
    end
  end

  def destroy
    @line_item.destroy
    
      redirect_to line_items_url, notice: 'Linha de item deletada com sucesso.' 
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:product_id, :basket_id)
    end
end
