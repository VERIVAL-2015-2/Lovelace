require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase 
  fixtures :categories

  # called before every single test
  def setup
    @categories = categories(:labios)
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
    assert_not_nil (:categories)  # ensuring that it assigns a valid categories instance variable.
  end

  def test_should_create_a_category
    assert_difference('Category.count') do
      post :create, :categories => { :id => @categories.id,
                                        :name => @categories.name, 
                                        :description => @categories.description,
                                      }
    end

    assert_redirected_to categories_path(assigns(:categories))
    assert_equal 'Categoria criada com sucesso!', flash[:notice]
    assert_not_nil Category.find_by(code: 201234)

  end

  def test_should_not_save_category_without_required_fields
    category = Category.new
    assert_not category.save, "Categoria salva sem código."
  end

  def test_should_show_categories
    # Reuse the @category instance variable from setup
    get :show, id: @categories.id
    assert_response :success
  end


  def test_should_edit_category
    get(:edit, :id => 1)
    assert_response :success
  end

end