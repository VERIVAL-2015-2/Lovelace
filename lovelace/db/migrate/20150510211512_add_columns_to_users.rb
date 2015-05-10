class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :userName, :string
    add_column :users, :cpf, :integer
    add_column :users, :sex, :string
    add_column :users, :ddd, :integer
    add_column :users, :phone, :integer
    add_column :users, :address, :string
    add_column :users, :number, :integer
    add_column :users, :complement, :string
    add_column :users, :bairro, :string
    add_column :users, :city, :string
    add_column :users, :uf, :string
    add_column :users, :cep, :integer
  end
end
