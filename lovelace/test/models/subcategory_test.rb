require 'test_helper'

class SubcategoryTest < ActiveSupport::TestCase

  test 'should be valid' do
  	create_subcategory
  	assert @subcategory.valid?
  end
  	
  test 'name of subcategory should not be blank' do
  	create_subcategory
  	@subcategory.name = ""
  	assert_not @subcategory.valid?
  end
  
  private
  def create_subcategory
  	@subcategory = Subcategory.create(name: 'SubTeste')
  end

end