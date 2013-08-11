class CreateEmployerProfiles < ActiveRecord::Migration
  def change
    create_table :employer_profiles do |t|
      t.string :company_name
      t.string :website

      t.timestamps
    end
  end
end
