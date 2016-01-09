class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id, null: false
      t.integer :amount, null: false
      t.string :aasm_state

      t.timestamps null: false
    end
  end
end
