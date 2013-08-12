class CreateWorkPermits < ActiveRecord::Migration
  def change
    create_table :work_permits do |t|
      t.string :name

      t.timestamps
    end
  end
end
