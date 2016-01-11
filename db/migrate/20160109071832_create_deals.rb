class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title, null: false
      t.string :permalink, null: false
      t.integer :front_runner_id, null: false
      t.integer :target_amount, null: false
      t.text :description, null: false
      t.string :aasm_state
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false

      t.timestamps null: false
    end
    add_index :deals, :permalink, unique: true
    add_index :deals, :front_runner_id
  end
end
