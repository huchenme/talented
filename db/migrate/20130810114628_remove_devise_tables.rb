class RemoveDeviseTables < ActiveRecord::Migration
  def change
    drop_table :users
    drop_table :roles
    drop_table :users_roles
  end
end
