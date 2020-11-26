require './lib/bike.rb'

class DockingStation 
  attr_reader :station
  def initialize
    @station = []
  end

  def release_bike
    empty?
    @station.pop()
  end

  def dock
    full?
    @station.push(Bike.new)
  end
  
  private
  def full?
    return fail 'station full' unless @station.length <= 19
  end

  def empty?
    return fail 'no bikes' unless @station.length > 0
  end
end
