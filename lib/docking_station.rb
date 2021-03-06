
class Bike
  def working?
   true
  end
end

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike
  attr_reader :capacity
  attr_accessor :capacity
  
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.count >=DEFAULT_CAPACITY
  end
  def empty?
    @bikes.empty?
  end
end
