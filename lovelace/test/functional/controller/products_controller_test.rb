require 'test_helper'

class ProductsControllerTest < ActionController::TestCase 
	fixtures :products

  test "should get index" do
    get :index
    assert_response :success
  end

  test  "should show products" do
  	get(:show, :id => 1)
	assert_response :success
  end

  test "should edit product" do
	 get(:show, :id => 1)
	 assert_response :success
  end


end