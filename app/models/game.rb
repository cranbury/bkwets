class Game < ActiveRecord::Base
  belongs_to :team
  has_many :rsvps

  geocoded_by :address, latitude: :lat, longitude: :long
  after_validation :geocode
end