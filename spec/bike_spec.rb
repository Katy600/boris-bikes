require 'hired_bike'
require 'docking_station'
describe Bike do
  it 'is of class Bike' do
    expect(subject).to be_instance_of Bike
  end

  it 'is working' do
    bike = Bike.new
    expect(bike.broken?).to eq nil
  end

  # it 'Can be returned as broken' do
  #     bike = Bike.new
  #     docking_station = DockingStation.new
  #     docking_station.dock(bike, 'broken')
  #     expect(bike.working).to eq false
  # end

  it 'can be reported broken' do
  subject.report_broken
  # let's use one of RSpec's predicate matchers
  expect(subject).to be_broken
end
end
