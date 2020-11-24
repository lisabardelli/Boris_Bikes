require "docking"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  #'should respond to :release_bike' do
    #expect(DockingStation).to respond_to(:release_bike)
  # it 'is of class DockingStation' do
  #   expect(docking_station).to be_instance_of DockingStation
  # end

  #it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
end
end

  #it 'will release_bike when passed "release_bike"' do
    #expect(DockingStation.new).to respond_to(:release_bike)
