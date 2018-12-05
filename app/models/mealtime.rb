class Mealtime < ApplicationRecord
  has_many :foods
  belongs_to :day
end
