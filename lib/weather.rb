require_relative './randomizer'

class Weather
  attr_reader :wind_speed

  STORMY_WIND_SPEED = 36
  MAX_WIND_SPEED = 40

  def randomized_wind_speed
    Randomizer.rand_between(0, MAX_WIND_SPEED)
  end

  def initialize(wind_speed = randomized_wind_speed)
    @wind_speed = wind_speed
  end

  def stormy?
    wind_speed >= STORMY_WIND_SPEED
  end
end
