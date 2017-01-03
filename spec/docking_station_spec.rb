
require 'docking_station'

describe DockingStation do
  it 'responds to release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # it 'docks bikes' do
  #   docking_station = DockingStation.new
  #   bike = subject.release_bike
  #   docking_station.dock(bike)
  #   expect(subject.docked_bike).to eq :docked_bike
  # end

  it { is_expected.to respond_to(:dock).with(1).argument }

end
