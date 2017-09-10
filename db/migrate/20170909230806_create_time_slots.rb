class CreateTimeSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :time_slots do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :description
      t.string :location
      t.integer :event_id, null: false

      t.timestamps
    end
  end
end
