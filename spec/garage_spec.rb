require 'garage'

describe Garage do
  it 'responds to fix_broken_bike' do
    expect(subject).to respond_to :fix_broken_bike
  end
end
