class RemoveUserAdminFrontRunner < ActiveRecord::Migration
  def up
    # deviseでUser,AdminUser,FrontRunnerを作るため
    drop_table :users
    drop_table :admin_users
    drop_table :front_runners
  end

  def down
    # もとに戻したいときはこのmigrationを消して、
    # rake db:drop
    # rake db:migration
    # するしかない（と思う）
  end
end
