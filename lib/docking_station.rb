require_relative 'hired_bike'

class DockingStation
attr_reader :bike
p 'hello1'
  def initialize
    p 'initialize empty bike rack'
    p @bike
    @bike = []
    p @bike
  end

  def release_bike
    p 'release bike'
      fail 'No bikes available' if @bike.empty?
       @bike.pop
  end

  def dock(bike)
    p 'dock bike'
    fail 'Docking station full' if @bike.count >= 20
    p bike
   @bike << bike
   p @bike
  end
end
