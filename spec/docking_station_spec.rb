require "../lib/docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)} 
  
  it 'gets a bike' do
    subject = DockingStation.new
    expect(subject.release_bike).to be_instance_of Bike
  end 

  it 'docking station allows a bike to be docked' do
    expect(subject).to respond_to :dock
  end

  
end


