require "bike"

describe Bike do
  # it 'is of class Bike' do
  #   expect(bike).to be_instance_of Bike
  # end

  #subject { Bike }
  #it { should respond_to :working? }
  it { is_expected.to respond_to :working? }
  #expect(bike.working?).to be_true

  # it 'is of class Bike' do
  #   expect(bike).to be_instance_of Bike
  # end

end
