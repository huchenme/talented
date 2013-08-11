class CreateCompensations < ActiveRecord::Migration
  def change
    create_table :compensations do |t|
      t.string :name

      t.timestamps
    end
  end
end
