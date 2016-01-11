class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :aasm_state

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end