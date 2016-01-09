class CreateDealUnits < ActiveRecord::Migration
  def change
    create_table :deal_units do |t|
      t.integer :deal_id, null: false
      t.string :title, null: false
      t.text :description
      t.integer :price, null: false
      t.string :reward
      t.string :aasm_state

      t.timestamps null: false
    end
  end
end
