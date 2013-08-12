class RenameColumns < ActiveRecord::Migration
  def up
    rename_column :developers, :availablity_id, :availability_id
  end

  def down
    rename_column :developers, :availability_id, :availablity_id
  end
end
