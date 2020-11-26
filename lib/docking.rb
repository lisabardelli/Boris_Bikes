require_relative 'bike'

class DockingStation
 attr_reader :bike

  def initialize
    @aval_bikes = []
  end

  def dock(bike)
    @bike = bike
    if @aval_bikes.length >= 1
      raise StandardError.new "Docking station full"
    else
      @aval_bikes << bike
    end
  end

  def release_bike
    if @aval_bikes.length > 0
      Bike.new
    else
      raise StandardError.new "There is no bike"
    end
  end

end
