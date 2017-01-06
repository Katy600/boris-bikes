
class Van
attr_reader :broken_bikes
  def take_broken_bikes(bikes)
    @broken_bikes = bikes.keep_if { |bike| bike.broken == true }
  end
end
