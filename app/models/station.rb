class Station < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :reviews
  has_many :station_chargers
  has_many :chargers, through: :station_chargers
end
