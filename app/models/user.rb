class User < ApplicationRecord
  has_many :days
  has_many :foods, through: :days
end
