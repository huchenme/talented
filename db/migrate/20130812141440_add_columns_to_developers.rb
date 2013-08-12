class AddColumnsToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :company, :string
    add_column :developers, :work_permit_id, :integer
    add_column :developers, :compensation_id, :integer
    add_column :developers, :availablity_id, :integer
    add_column :developers, :goal, :text
    add_column :developers, :linkedin, :string
    add_column :developers, :github, :string

    create_table :developers_team_sizes, :id => false do |t|
      t.integer :developer_id
      t.integer :team_size_id
    end

    create_table :developers_business_types, :id => false do |t|
      t.integer :developer_id
      t.integer :business_type_id
    end

    create_table :developers_position_types, :id => false do |t|
      t.integer :developer_id
      t.integer :position_type_id
    end

    create_table :developers_tech_skills, :id => false do |t|
      t.integer :developer_id
      t.integer :tech_skill_id
    end

    add_index :developers_team_sizes, [:developer_id, :team_size_id], :name => 'developers_team_sizes_index'
    add_index :developers_business_types, [:developer_id, :business_type_id], :name => 'developers_business_types_index'
    add_index :developers_position_types, [:developer_id, :position_type_id], :name => 'developers_position_types_index'
    add_index :developers_tech_skills, [:developer_id, :tech_skill_id], :name => 'developers_tech_skills_index'
    add_index :developers, :work_permit_id
    add_index :developers, :compensation_id
    add_index :developers, :availablity_id
  end
end