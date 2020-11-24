require "docking"

describe DockingStation do
  subject { DockingStation }
  it { should respond_to :release_bike }
  #'should respond to :release_bike' do
    #expect(DockingStation).to respond_to(:release_bike)
end
  #it 'will release_bike when passed "release_bike"' do
    #expect(DockingStation.new).to respond_to(:release_bike)
