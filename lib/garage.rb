require_relative 'docking_station'
require_relative 'hired_bike'

class Garage
attr_reader :fixed_bikes

  def fix_broken_bike(broken_bikes)
    @fixed_bikes = broken_bikes.each { |bike| bike.broken = false }
  end
end
