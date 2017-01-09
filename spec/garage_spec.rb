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

  it 'has a default capacity' do
    expect(subject.capacity).to eq 10
  end

# describe '#fix_broken_bike' do
#   it 'raises an error when full' do
#      docking_station = DockingStation.new
#      19.times do
#      bike = Bike.new
#      bike.report_broken
#      docking_station.dock(bike)
#   end
#  expect {subject.take_broken_bikes(docking_station.bikes)}.to raise_error('No space available')
# end


end
