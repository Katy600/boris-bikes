require_relative 'hired_bike'

class DockingStation
attr_reader :capacity, :bikes
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    bike = @bikes.pop
    raise "No bikes available" if bike.broken == true
    @bikes.pop
  end

  def dock(bike, status = false)
    fail 'Docking station full' if full?
     if status == 'broken'
       bike.broken = true
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
