mock_time = Time.new(2021, 5, 31, 2, 2, 2)

me = User.create do |user|
  user.username = 'lpan'
  user.email = 'me@lpan.io'
  user.password_digest = 'dank_mr_goose'
end

ev1 = me.events.create do |event|
  event.summary = 'ECE 420 assignment 69 deadline'
  event.description = 'Readings + bullshit'
end

ev2 = me.events.create do |event|
  event.summary = 'Mr. Goose office hour'
end

ev1.time_slots.create do |ts|
  ts.start_time = mock_time
  ts.end_time = mock_time + 1.hour
  ts.location = 'Engineering 9'
end

ev2.time_slots.create do |ts|
  ts.start_time = mock_time
  ts.end_time = mock_time + 1.hour
  ts.location = 'V1 green'
end

ev2.time_slots.create do |ts|
  ts.start_time = mock_time + 4.hours
  ts.end_time = mock_time + 5.hours
  ts.location = 'CIF'
end
