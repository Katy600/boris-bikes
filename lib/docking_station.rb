require_relative 'hired_bike'

class DockingStation
attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
      raise 'No bikes available' if empty?
       @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if full?
     @bikes.length
     @bikes << bike
  end

  private
  def full?
    @bikes.length >= 21
  end

  def empty?
    @bikes.empty?
  end
end
