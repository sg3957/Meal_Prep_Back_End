class MealtimeSerializer < ActiveModel::Serializer
  attributes :id, :name, :foods

  has_many :foods
end
