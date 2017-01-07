require_relative 'docking_station'
require_relative 'hired_bike'

class Garage
attr_reader :broken_bikes

  def fix_broken_bike(broken_bikes)
    @broken_bikes = broken_bikes.each { |bike| bike.broken = false }
  end
end
