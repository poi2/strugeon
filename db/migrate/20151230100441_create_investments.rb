class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :ticked_id
      t.integer :investor_id
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
