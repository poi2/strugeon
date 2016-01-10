class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cart_id, null: false
      t.string :auth_code
      t.string :payment_method, null: false
      t.string :aasm_state

      t.timestamps null: false
    end
    add_index :payments, :cart_id
  end
end
