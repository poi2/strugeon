class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :deal_unit_id
      t.integer :stock

      t.timestamps null: false
    end
  end
end
