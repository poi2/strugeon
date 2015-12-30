class CreateInnovators < ActiveRecord::Migration
  def change
    create_table :innovators do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :birth
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
