require "docking"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }


  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  bike = Bike.new
  it { expect{docking_station.dock(bike_2)}.to raise_error StandardError}

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  #it 'releases working bikes' do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  # end
  it 'should release a bike' do
    bike = Bike.new
    expect(subject.release_bike).to be_an_instance_of Bike
  end

let(:aval_bikes) {[]}
bike = Bike.new
  it { expect{docking_station.release_bike}.to raise_error StandardError}

end
