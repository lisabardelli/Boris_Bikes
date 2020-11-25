class DockingStation

  attr_reader :bike_array

  def initialize
    @bike_array = []
  end

  def release_bike
    return Bike.new
  end

  def return_bike
    @bike_array << Bike.new
  end

end
