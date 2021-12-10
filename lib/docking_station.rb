class Bike
  def working?
   true
  end
end

class DockingStation
  attr_reader :bike
  
  def initialize
    @bikes = []
  end
  
  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end
  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end
  private
  def full?
    @bikes.count >=20
  end
  def empty?
    @bikes.empty?
  end
end
