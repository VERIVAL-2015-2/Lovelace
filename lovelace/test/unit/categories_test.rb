require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  fixtures :categories

    def test_categories

      category = Category.new(
         :id => categories(:labios).id,
         :name => categories(:labios).name, 
         :description => categories(:labios).description
      )

      msg = "Categoria não foi salva. " + "Erros: " + category.errors.inspect
      assert category.save, msg

      category_paleta_copia = Category.find(category.id)
      assert_equal category.name, category_paleta_copia.name
    end

end