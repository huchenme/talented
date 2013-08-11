class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.boolean :relocate
      t.string :position
      t.string :location

      t.timestamps
    end
  end
end
