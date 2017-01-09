require_relative 'garage'

class Van
attr_reader :broken_bikes, :fixed_bikes, :capacity
DEFAULT_CAPACITY = 15

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
  end

  def take_broken_bikes(bikes)
   raise "No space available" if bikes.length >= 15
   @broken_bikes = bikes.keep_if { |bike| bike.broken == true }
  end

  def take_working_bikes(fixed_bikes)
    @fixed_bikes = fixed_bikes
  end
end
