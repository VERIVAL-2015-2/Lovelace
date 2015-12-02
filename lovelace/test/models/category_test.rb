class CategoryTest < ActiveSupport::TestCase
  
  test 'should be valid' do
  	create_category
  	assert @category.valid?
  end

  test 'name of category should not be blank' do
  	create_category
  	@category.name = ""
  	assert_not @category.valid?
  end

  private
  def create_category
  	@category = Category.create(name: 'Teste')
  end

end