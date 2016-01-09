class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.integer :target_amount
      t.text :description
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
