class Game < ActiveRecord::Base
  geocoded_by :address, latitude: :lat, longitude: :long
  after_validation :geocode
end