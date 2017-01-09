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

  it 'takes fixed bikes from garage and places them in a docking station' do
    bike = Bike.new
    docking_station = DockingStation.new
    garage = Garage.new
    bike.report_broken
    docking_station.dock(bike)
    subject.take_broken_bikes(docking_station.bikes)
    garage.fix_broken_bike(subject.broken_bikes)
    expect(subject.take_working_bikes(garage.fixed_bikes)).to eq [bike]
  end

end
