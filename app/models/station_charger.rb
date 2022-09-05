class StationCharger < ApplicationRecord
  belongs_to :charger
  belongs_to :station
end
