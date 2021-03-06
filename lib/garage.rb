require_relative 'docking_station'
require_relative 'hired_bike'

class Garage
attr_reader :fixed_bikes, :capacity

DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
  end

  def fix_broken_bike(broken_bikes)
    @fixed_bikes = broken_bikes.each { |broken_bike| broken_bike.broken = false }
    # broken_bikes.inspect
  end
end
