
require 'docking_station'
require 'hired_bike'

describe DockingStation do
  it 'responds to release bike' do
    expect(subject).to respond_to :release_bike
  end

  let(:bike) {double :bike}
    it 'releases previously docked bike' do
      bike = double(:bike) #refer to class
      allow(bike).to receive(:working).and_return(true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    # it 'can change its capacity' do
    #   docking_station = DockingStation.new
    #   docking_station(10)
    #   expect(docking_station.capacity).to eq DockingStation::(10)
    # end

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.broken?).to eq nil
  end

  it { is_expected.to respond_to(:dock).with(1).argument }


  it { is_expected.to respond_to(:release_bike) }

  it 'docks bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end
# let(:bike) {double :bike}
#   it 'returns docked bikes' do
#     bike = double(:bike)
#     subject.dock(bike)
#     expect(subject.bikes).to include bike
#   end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = double(:bike)
      subject.dock(bike)
      10.times{subject.dock bike}
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    # it 'raises an error when a bike is broken' do
    #   bike = Bike.new
    #   docking_station = DockingStation.new
    #   docking_station.dock(bike, 'broken')
    #   expect { subject.release_bike }.to raise_error 'This bike is broken'
    # end

    # it 'does not raise an error when there is less than 20 bikes docked' do
    #   bike = double(:bike)
    #     DockingStation::DEFAULT_CAPACITY.times do
    #     subject.dock bike
    #     end
    #   subject.release_bike
    #   expect(subject.bikes.count).to eq 19
    # end

    describe '#dock' do
      it 'raises an error when full' do
        bike = double(:bike)
        subject.capacity.times { subject.dock bike }
        expect {subject.capacity.times{ subject.dock(bike)} }.to raise_error('Docking station full')
      end
    end
  end
    describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end
end
