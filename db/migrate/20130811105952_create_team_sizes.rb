class CreateTeamSizes < ActiveRecord::Migration
  def change
    create_table :team_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
