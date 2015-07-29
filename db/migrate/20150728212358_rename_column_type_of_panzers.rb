class RenameColumnTypeOfPanzers < ActiveRecord::Migration
  def change
    change_table :panzers do |t|
      t.rename :type, :type_
    end
  end
end
