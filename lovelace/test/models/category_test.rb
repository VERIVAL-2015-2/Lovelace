class CategoryTest < ActiveSupport::TestCase
  
  test 'should be valid' do
  	create_category
  	assert @category.valid?
  end

  private
  def create_category
  	@category = Category.create(name: 'Teste')
  end

end