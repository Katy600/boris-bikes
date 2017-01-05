require_relative 'hired_bike'

class DockingStation
attr_reader :capacity, :bike
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
      fail 'No bikes available' if empty?
       @bikes.pop
  end

  def dock(bike, status = true)
    fail 'Docking station full' if full?
     if status == 'broken'
       bike.working = false
     end
     @bikes << bike
  end

  # private
  # attr_reader :bikes
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
