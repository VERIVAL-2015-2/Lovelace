require 'test_helper'

class SubcategoryTest < ActiveSupport::TestCase
  fixtures :subcategories

    def test_subcategories

      subcategory = Subcategory.new(
         :id => subcategories(:paleta).id,
         :name => subcategories(:paleta).name, 
         :description => subcategories(:paleta).description
      )

      msg = "Subcategoria não foi salva. " + "Erros: " + subcategory.errors.inspect
      assert subcategory.save, msg

      subcategory_paleta_copia = Subcategory.find(subcategory.id)
      assert_equal subcategory.name, subcategory_paleta_copia.name
    end

end