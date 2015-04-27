require 'test_helper'

class ProductsControllerTest < ActionController::TestCase 
  fixtures :products

  # called before every single test
  def setup
    @products = products(:kit_lapis)
  end

  # called after every single test
  def teardown
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  #simulates a request on the action called index
  def test_should_get_index   
    get :index
    assert_response :success #making sure the request was successful
    assert_not_nil (:products)  # ensuring that it assigns a valid products instance variable.
  end

  def test_should_create_a_product
    assert_difference('Product.count') do
      post :create, :products => { :id => @products.id,
                                   :code => @products.code, 
                                   :name => @products.name,
                                   :price => @products.price,
                                   :stock => @products.stock,
                                   :description => @products.description,
                                   :details => @products.details
                                 }
    end

    assert_redirected_to products_path(assigns(:products))
    assert_equal 'Produto criado com sucesso!', flash[:notice]
    assert_not_nil Product.find_by(code: 201234)

  end

  def test_should_not_save_product_without_required_fields
    product = Product.new
    assert_not product.save, "Produto salvo sem código."
  end

  def test_should_show_products
    # Reuse the @product instance variable from setup
    get :show, id: @products.id
    assert_response :success
  end


  def test_should_edit_product
    get(:edit, :id => 1)
    assert_response :success
  end

end