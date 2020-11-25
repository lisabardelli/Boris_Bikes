class DockingStation

  attr_reader :bike_array

  def initialize
    @bike_array = []
  end

  def release_bike
    if @bike_array.length > 0
      return Bike.new
    else
      raise StandardError.new "This is an exception"
    end
  end

  def dock(bike)
    bike = Bike.new
    @bike_array << bike
  end

end
