class TimeSlotSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :start_time, :end_time

  belongs_to :event

  def start_time
    object.start_time.to_s(:iso_8601)
  end

  def end_time
    object.end_time.to_s(:iso_8601)
  end
end
