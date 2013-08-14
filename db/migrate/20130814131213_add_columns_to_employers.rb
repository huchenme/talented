class AddColumnsToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :other_contact, :string
    add_column :employers, :location, :string
    add_column :employers, :description, :text
    add_column :employers, :vision, :text
    add_column :employers, :team_size_id, :integer

    create_table :business_types_employers, :id => false do |t|
      t.integer :employer_id
      t.integer :business_type_id
    end

    add_index :employers, :team_size_id
    add_index :business_types_employers, [:employer_id, :business_type_id], :name => 'employers_business_types_index'
  end
end
