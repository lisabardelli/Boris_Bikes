require './lib/bike.rb'

class DockingStation
  attr_reader :station, :capacity

  def initialize(default_capacity = 20)
    @station = []
    @capacity = default_capacity
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
    return fail 'station full' unless @station.count < @capacity
  end

  def empty?
    return fail 'no bikes' unless @station.count > 0
  end
end

