require "../lib/docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)} 
  
  it 'gets a bike' do
    subject = DockingStation.new
    subject.dock
    expect(subject.release_bike).to be_instance_of Bike
  end 

  it 'docking station allows a bike to be docked' do
    expect(subject).to respond_to :dock
  end

  it 'raises an error if station does not have bike' do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error 'no bikes'
  end
  
end


