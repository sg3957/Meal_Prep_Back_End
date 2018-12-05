class Day < ApplicationRecord
  has_many :mealtimes
  has_many :foods, through: :mealtimes
  belongs_to :user
end
