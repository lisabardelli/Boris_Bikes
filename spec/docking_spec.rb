require "./lib/docking.rb"
# require "bike"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#dock' do
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it { expect{20.times {docking_station.dock Bike.new}}.to raise_error StandardError}
end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


  it 'should release a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_an_instance_of Bike
  end

let(:aval_bikes) {[]}
    it { expect{docking_station.release_bike}.to raise_error StandardError}
end

