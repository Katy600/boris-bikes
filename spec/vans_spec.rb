require 'vans'
require 'hired_bike'
require 'docking_station'

describe Van do
  it 'responds to release bike' do
    expect(subject).to respond_to :take_broken_bikes
  end

  it 'takes broken bikes from docked station' do
    bike = Bike.new
    docking_station = DockingStation.new
    bike.report_broken
    bikes = docking_station.bikes
    docking_station.dock(bike)
    expect(subject.take_broken_bikes(bikes)).to eq [bike]
  end
end
