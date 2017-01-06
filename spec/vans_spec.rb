require 'vans'
describe Van do
  it 'responds to release bike' do
    expect(subject).to respond_to :take_broken_bikes
  end
end
