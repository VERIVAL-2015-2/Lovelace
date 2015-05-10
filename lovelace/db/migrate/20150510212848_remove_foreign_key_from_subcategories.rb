class RemoveForeignKeyFromSubcategories < ActiveRecord::Migration
  def change
    remove_column :subcategories, :add_foreign_key, :string
  end
end
