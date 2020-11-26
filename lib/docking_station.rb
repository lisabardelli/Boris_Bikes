require './lib/bike.rb'

class DockingStation
  attr_reader :station, :default_capacity

  def initialize(capacity = 20)
    @station = []
    @default_capacity = capacity
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
    return fail 'station full' unless @station.count < @default_capacity
  end

  def empty?
    return fail 'no bikes' unless @station.count > @default_capacity
  end
end
