require 'minitest/autorun'
require './exercises'

class ExercisesTest < Minitest::Test

  def setup
  end

  def test_create_new_weighted_exercise
    exercise = Exercise.new("back squat", "5x5", "125")

    assert_equal "5x5x125# Back squat", exercise.to_s
  end

  def test_create_new_unweighted_exercise
    exercise = Exercise.new("low bar pull-up", "3x6")

    assert_equal "3x6 Low bar pull-up", exercise.to_s
  end
end
