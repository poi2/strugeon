class CreateDealUnits < ActiveRecord::Migration
  def change
    create_table :deal_units do |t|
      t.integer :deal_id, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.string :reward, null: false
      t.string :aasm_state

      t.timestamps null: false
    end
    add_index :deal_units, :deal_id
  end
end
