class ProductsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :new, :create]

  public
  def index
    @products = Product.search(params[:search])
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  		redirect_to @product, notice: 'Produto criado com sucesso!'
  	else
  		render :new
  	end
  end

  public
  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to @product, notice: 'Produto alterado com sucesso!'
      else
        render :edit
      end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to products_path, notice: 'Produto deletado com sucesso!'
  end

  private
  def product_params
  	params.require(:product).permit(:code, :name, :price, :stock, :description, :details, :image)
  end
end
