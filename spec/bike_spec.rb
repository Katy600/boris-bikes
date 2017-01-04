require 'hired_bike'

describe Bike do
  it 'is of class Bike' do
    expect(subject).to be_instance_of Bike
  end

  it 'is working' do
    bike = Bike.new
    expect(bike).to be_working
  end
end
