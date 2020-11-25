require 'docking_station'
require 'bike'

describe DockingStation do
    docking_station = DockingStation.new
    it "should release a bike" do
    expect(docking_station.release_bike).to be_an_instance_of Bike
    end

    it "docks a bike" do
      docking_station.return_bike
      expect(docking_station.bike_array).to_not be_empty
    end

end
