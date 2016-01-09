class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title, unique: true
      t.integer :target_amount, null: false
      t.text :description
      t.string :aasm_state
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
