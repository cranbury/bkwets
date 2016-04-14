class AddRsvPs < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
