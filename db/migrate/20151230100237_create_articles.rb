class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :target_amount
      t.datetime :closed_at

      t.timestamps null: false
    end
  end
end
