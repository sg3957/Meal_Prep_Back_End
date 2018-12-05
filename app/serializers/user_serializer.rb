class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :days

  has_many :days
end
