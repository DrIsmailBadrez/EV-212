class Station < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :station_chargers
  has_many :chargers, through: :station_chargers
end
