require_relative 'docking_station'
class Bike
  attr_accessor :working

  def initialize(working=true)
    @working = working
  end

end
