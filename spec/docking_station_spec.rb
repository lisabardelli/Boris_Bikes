require 'docking_station'
require 'bike'

describe DockingStation do
    docking_station = DockingStation.new
    it "should release a bike" do 
    expect(docking_station.release_bike).to be_an_instance_of Bike
    end
end