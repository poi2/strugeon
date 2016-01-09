class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :name, null: false
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.string :aasm_state
      t.string :role, null: false

      t.timestamps null: false
    end
  end
end
