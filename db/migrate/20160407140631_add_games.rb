class AddGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :location
      t.string :lat
      t.string :long
 
      t.timestamps
    end
  end
end
