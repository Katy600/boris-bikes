require 'garage'
require 'docking_station'
require 'hired_bike'

describe Garage do
  it 'responds to fix_broken_bike' do
    expect(subject).to respond_to :fix_broken_bike
  end
  it 'takes broken bikes and fixes them' do
    bike = Bike.new
    van = Van.new
    docking_station = DockingStation.new
    bike.report_broken
    docking_station.dock(bike)
    van.take_broken_bikes(docking_station.bikes)
    subject.fix_broken_bike(van.broken_bikes)
    expect(bike.broken).to eq false
  end

end
