require_relative 'garage'

class Van
attr_reader :broken_bikes, :fixed_bikes, :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
  end


  def take_broken_bikes(bikes)
   @broken_bikes = bikes.keep_if { |bike| bike.broken == true }
  end

  def take_working_bikes(fixed_bikes)
    @fixed_bikes = fixed_bikes
  end
end
