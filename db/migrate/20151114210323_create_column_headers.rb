class CreateColumnHeaders < ActiveRecord::Migration
  def change
    create_table :column_headers do |t|
      t.text :name, limit: 32
      t.text :caption, limit: 32

      t.timestamps null: false
    end
  end
end
