require 'docking_station'
require 'bike'

describe DockingStation do
  context "bikes available" do

    let(:docking_station) { DockingStation.new}

     before(:each) do
     docking_station.dock("bike1")
     end

    it "docks a bike" do
      expect(docking_station.bike_array).to_not be_empty
    end

    it {expect{docking_station.dock("bike2")}.to raise_error}

    it "should release a bike" do
    expect(docking_station.release_bike).to be_an_instance_of Bike
    end

  end

  let(:bike_array) {[]}
    it {expect{docking_station.release_bike}.to raise_error}
end
