class CreateUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
	    t.string   :name                   
	    t.integer  :cpf                    
	    t.string   :userName               
	    t.string   :sex                    
	    t.integer  :ddd                       
	    t.integer  :phone                     
	    t.string   :address               
	    t.integer  :number                  
	    t.string   :complement             
	    t.string   :bairro                 
	    t.string   :city                   
	    t.string   :uf                     
	    t.integer  :cep               
	end
  end
end
