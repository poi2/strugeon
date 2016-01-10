class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id, null: false
      t.integer :deal_unit_id, null: false
      t.integer :quantity, null: false
      t.string :aasm_state

      t.timestamps null: false
    end
    add_index :orders, :cart_id
    add_index :orders, :deal_unit_id
  end
end
