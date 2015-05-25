require 'test_helper'

class SubcategoriesControllerTest < ActionController::TestCase 
  fixtures :subcategories

  # called before every single test
  def setup
    @subcategories = subcategories(:paleta)
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
    assert_not_nil (:subcategories)  # ensuring that it assigns a valid subcategories instance variable.
  end

  def test_should_create_a_subcategory
    assert_difference('Subcategory.count') do
      post :create, :subcategories => { :id => @subcategories.id,
                                        :name => @subcategories.name, 
                                        :description => @subcategories.description,
                                      }
    end

    assert_redirected_to subcategories_path(assigns(:subcategories))
    assert_equal 'Subcategoria criada com sucesso!', flash[:notice]
    assert_not_nil Subcategory.find_by(code: 201234)

  end

  def test_should_not_save_subcategory_without_required_fields
    subcategory = Subcategory.new
    assert_not subcategory.save, "Subcategoria salva sem código."
  end

  def test_should_show_subcategories
    # Reuse the @subcategory instance variable from setup
    get :show, id: @subcategories.id
    assert_response :success
  end


  def test_should_edit_subcategory
    get(:edit, :id => 1)
    assert_response :success
  end

end