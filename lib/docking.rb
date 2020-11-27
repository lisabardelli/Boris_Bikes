require_relative 'bike'

class DockingStation
 attr_reader :bike

  def initialize
    @aval_bikes = []
  end

  def full?
    if @aval_bikes.length >= 20
      return true
    else 
      return false 
  end

  def dock(bike)
    @bike = bike
    if docking_station.full?
      raise StandardError.new "Docking station full"
    else
      @aval_bikes << bike
    end
  end

  def release_bike
    bike = Bike.new
      raise StandardError.new "There is no bike" unless @aval_bikes.length > 0
      bike
  end

end
