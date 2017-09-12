class TimeSlotSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :start_time, :end_time

  belongs_to :event
end
