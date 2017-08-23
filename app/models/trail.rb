class Trail < ApplicationRecord
  has_many :goals
  has_many :reviews
end
