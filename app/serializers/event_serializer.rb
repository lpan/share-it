class EventSerializer < ActiveModel::Serializer
  attributes :id, :summary, :description

  has_many :time_slots
end
