require './lib/bike.rb'

class DockingStation 
  attr_reader :station
  def initialize
    @station = []
  end

  def release_bike
    Bike.new
  end

  def dock
    @station.push(Bike.new)
  end
end
