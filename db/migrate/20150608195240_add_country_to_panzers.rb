class AddCountryToPanzers < ActiveRecord::Migration
  def change
    add_column :panzers, :country, :string, limit:20, null:true
    add_column :panzers, :country2, :string, limit:20, null:true
  end
end
