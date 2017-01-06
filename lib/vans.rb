
class Van
  def take_broken_bikes(bikes)
    bikes.keep_if { |bike| bike.broken == true }
  end
end
