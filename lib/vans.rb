require_relative 'garage'

class Van
attr_reader :broken_bikes, :fixed_bikes

  def take_broken_bikes(bikes)
   @broken_bikes = bikes.keep_if { |bike| bike.broken == true }
  end

  def take_working_bikes(fixed_bikes)
    @fixed_bikes = fixed_bikes
  end
end
