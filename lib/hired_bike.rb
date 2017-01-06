require_relative 'docking_station'
class Bike
attr_accessor :broken

def initialize
  @broken = false
end

def report_broken
  @broken = true
end
  # def broken?
  #   @broken
  # end
end
