class CreateFrontRunners < ActiveRecord::Migration
  def change
    create_table :front_runners do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text :description
      t.string :aasm_state

      t.timestamps null: false
    end
    add_index :front_runners, :email, unique: true
  end
end
