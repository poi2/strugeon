class AddPasswordDigest < ActiveRecord::Migration
  def change
    add_column :investors,  :password_digest, :string
    add_column :innovators, :password_digest, :string

    remove_column :investors,  :password, :string
    remove_column :innovators, :password, :string
  end
end
