class DaySerializer < ActiveModel::Serializer
  attributes :id, :name, :mealtimes

  has_many :mealtimes
end
