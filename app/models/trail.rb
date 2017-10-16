class Trail < ApplicationRecord
  has_many :goals
  has_many :reviews
  has_many :hikes

  reverse_geocoded_by :latitude, :longitude
end
