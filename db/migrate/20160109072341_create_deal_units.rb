class CreateDealUnits < ActiveRecord::Migration
  def change
    create_table :deal_units do |t|
      t.integer :deal_id
      t.string :title
      t.text :description
      t.integer :price
      t.string :reward

      t.timestamps null: false
    end
  end
end
