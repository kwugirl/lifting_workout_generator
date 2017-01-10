# Usage

This is a lifting workout generator based on the Texas Method, with accessory work focused on improving core strength and training towards pull-ups. Try it out! [https://lifting-workout.herokuapp.com/](https://lifting-workout.herokuapp.com/)

Given input:
```ruby
squat_5rm = 140
press_type = :shoulder
bench_5rm = 83
shoulder_press_5rm = 73
deadlift_5rm = 105
plan = WeeklyWorkoutPlan.new(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)
```

Expected output:
```
Day 1:
5x5x66# Shoulder press
4x20s Side planks

5x5x125# Back squat
3x6 Pause ring row

1x5x90# Deadlift

Day 2:
3x5x75# Bench press
6x8 Sit-ups

2x5x100# Back squat
5x8 Ring row

Day 3:
1x5x75# Shoulder press
6x8 Sit-ups

1x5x145# Back squat
5x5 Pause ring row
```

# To do
* put into a Sinatra app & get onto Heroku
* revisit rounding schemes, may need to make them more granular and/or bar-based
* need way to adjust for personal desired rep schemes, like length of planks
