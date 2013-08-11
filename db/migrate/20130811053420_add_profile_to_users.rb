class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_id, :integer
    add_column :users, :profile_type, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_index :users, [:profile_id, :profile_type]
  end
end
