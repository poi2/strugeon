class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :article_id
      t.integer :price
      t.text :reword

      t.timestamps null: false
    end
  end
end
