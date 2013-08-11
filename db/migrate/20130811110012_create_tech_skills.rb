class CreateTechSkills < ActiveRecord::Migration
  def change
    create_table :tech_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
