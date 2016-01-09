class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cart_id
      t.string :auth_code
      t.string :payment_method

      t.timestamps null: false
    end
  end
end
