class CreatePanzers < ActiveRecord::Migration
  def change
    create_table :panzers do |t|
      t.text :name, limit: 13

      t.timestamps null: false
    end
  end
end
