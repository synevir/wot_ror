class ChangeColumnName < ActiveRecord::Migration
  def change
    change_column :panzers, :name, :string, limit:13
  end
end
