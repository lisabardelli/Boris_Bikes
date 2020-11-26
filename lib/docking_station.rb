require './lib/bike.rb'

class DockingStation 
  attr_reader :station

  def initialize
    @station = []
    @default_capacity = 20
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
    return fail 'station full' unless @station.length <= @default_capacity
  end

  def empty?
    return fail 'no bikes' unless @station.length > @default_capacity
  end
end
