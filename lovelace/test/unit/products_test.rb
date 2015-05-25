require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

    def test_products

      product = Product.new(
         :id => products(:kit_lapis).id,
         :code => products(:kit_lapis).code, 
         :name => products(:kit_lapis).name,
         :price => products(:kit_lapis).price,
         :stock => products(:kit_lapis).stock,
         :description => products(:kit_lapis).description,
         :details => products(:kit_lapis).details
      )

      msg = "Produto não foi salvo. " + "Erros: " + product.errors.inspect
      assert product.save, msg

      product_kit_lapis_copia = Product.find(product.id)
      assert_equal product.name, product_kit_lapis_copia.name
    end
end