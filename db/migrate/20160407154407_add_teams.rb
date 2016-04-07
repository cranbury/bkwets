class AddTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name

      t.timestamps
    end

    add_column :games, :team_id, :integer
  end
end
