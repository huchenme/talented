class RenameTable < ActiveRecord::Migration
  def up
    rename_table :developers_business_types, :business_types_developers
  end

  def down
    rename_table :business_types_developers, :developers_business_types
  end
end
