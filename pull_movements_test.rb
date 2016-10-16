require 'minitest/autorun'
require './exercises'
require './pull_movements'

pullup = PullUp.new
puts Exercise.new(pullup.name, pullup.rep_scheme)

# ring_row = RingRow.new
# puts Exercise.new(ring_row, ring_row.rep_scheme)

# pause_ring_row = PauseRingRow.new
# puts Exercise.new(pause_ring_row, pause_ring_row.rep_scheme)

puts PullMovement.create_new.inspect
puts PullMovement.create_new.inspect
puts PullMovement.create_new.inspect
