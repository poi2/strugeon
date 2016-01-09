class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :deal_unit_id, null: false
      t.integer :stock, null: false
      t.integer :ready, null: false
      t.integer :sold, null: false

      t.timestamps null: false
    end
  end
end
