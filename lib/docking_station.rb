require_relative 'hired_bike'

class DockingStation
attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
      raise 'No bikes available' if @bikes.empty?
       @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if self.full?
     @bikes.length
     @bikes << bike
  end

  def full?
    @bikes.length >= 21
  end
end
