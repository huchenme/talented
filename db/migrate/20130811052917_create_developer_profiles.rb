class CreateDeveloperProfiles < ActiveRecord::Migration
  def change
    create_table :developer_profiles do |t|
      t.boolean :relocate
      t.string :position
      t.string :location

      t.timestamps
    end
  end
end
