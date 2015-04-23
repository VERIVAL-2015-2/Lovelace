require 'test_helper'

class ProductsControllerTest < ActionController::TestCase 
  fixtures :products

  # called before every single test
  def setup
    @products = products(:one)
  end

  # called after every single test
  def teardown
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  #simulates a request on the action called index
  test "should get index" do    
    get :index
    assert_response :success #making sure the request was successful
    assert_not_nil (:products)  # ensuring that it assigns a valid products instance variable.
  end

  test "should create a product" do
    get (:new)
    assert_response :success
  end

  test  "should show products" do
    # Reuse the @article instance variable from setup
    get :show, params: { code: @product.code }
    assert_response :success
  end


  test "should edit product" do
   get(:edit, :id => 1)
   assert_response :success
  end

  #test "should save a product" do


end