class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.float :price
      t.integer :stock
      t.text :description
      t.text :details

      t.timestamps null: false
    end
  end
end