class User < ApplicationRecord
  has_many :days
  has_many :mealtimes, through: :days
  has_many :foods, through: :mealtimes
end
