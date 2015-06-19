class AddStatusNameToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :statusName, :string
  end
end
