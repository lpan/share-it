class CreateTimeSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :time_slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :event_id

      t.timestamps
    end
  end
end
