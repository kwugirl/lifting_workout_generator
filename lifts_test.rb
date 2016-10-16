require 'minitest/autorun'
require './lifts'

class LiftsTest < Minitest::Test

  def setup
  end

  def test_create_new_squat_without_specified_rep_scheme
    squat = BackSquat.new

    assert_equal "5x5", squat.rep_scheme
  end

  def test_create_new_squat_with_specific_rep_scheme
    squat = BackSquat.new("1x5")

    assert_equal "1x5", squat.rep_scheme
  end
end
