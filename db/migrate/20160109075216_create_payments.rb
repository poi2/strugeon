class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cart_id, null: false
      t.string :auth_code, unique: true
      t.string :payment_method
      t.string :aasm_state

      t.timestamps null: false
    end
  end
end
