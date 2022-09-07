class Station < ApplicationRecord
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :station_chargers, dependent: :destroy
  has_many :chargers, through: :station_chargers
end
