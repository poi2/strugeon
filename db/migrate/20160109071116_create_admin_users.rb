class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :aasm_state
      t.string :role, null: false

      t.timestamps null: false
    end
    add_index :admin_users, :email, unique: true
  end
end
