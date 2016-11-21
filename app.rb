require 'sinatra/base'

class LiftingWorkoutGenerator < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end
