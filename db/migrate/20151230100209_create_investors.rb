class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :birth

      t.timestamps null: false
    end
  end
end
