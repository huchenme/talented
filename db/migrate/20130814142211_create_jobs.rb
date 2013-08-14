class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :employer
      t.string :title
      t.text :description
      t.text :responsibility
      t.text :requirement
      t.references :compensation
      t.text :ideal_candidate
      t.references :availability

      t.timestamps
    end
    add_index :jobs, :employer_id
    add_index :jobs, :compensation_id
    add_index :jobs, :availability_id

    create_table :jobs_position_types, :id => false do |t|
      t.integer :job_id
      t.integer :position_type_id
    end

    create_table :jobs_tech_skills, :id => false do |t|
      t.integer :job_id
      t.integer :tech_skill_id
    end

    add_index :jobs_tech_skills, [:job_id, :tech_skill_id], :name => 'jobs_tech_skills_index'
    add_index :jobs_position_types, [:job_id, :position_type_id], :name => 'jobs_position_types_index'
  end
end
