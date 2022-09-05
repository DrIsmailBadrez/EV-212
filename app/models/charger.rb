class Charger < ApplicationRecord
  has_many :station_chargers
  has_many :stations, through: :station_chargers
end
