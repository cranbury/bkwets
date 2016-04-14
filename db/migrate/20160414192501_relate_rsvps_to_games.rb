class RelateRsvpsToGames < ActiveRecord::Migration
  def change
    add_column :rsvps, :game_id, :integer
  end
end
