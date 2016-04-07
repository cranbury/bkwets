class ChangeLocColToAddress < ActiveRecord::Migration
  def change
    rename_column :games, :location, :address
  end
end
