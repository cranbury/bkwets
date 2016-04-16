class AddPhoneToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :phone_number, :string
  end
end
