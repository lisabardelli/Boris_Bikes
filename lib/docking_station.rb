require './lib/bike.rb'

class DockingStation 
  attr_reader :station
  def initialize
    @station = []
  end

  def release_bike
    return fail 'no bikes' unless @station.length > 0
    @station.pop()
  end

  def dock
    return fail 'station full' unless @station.length <= 19
    @station.push(Bike.new)
  end
end
