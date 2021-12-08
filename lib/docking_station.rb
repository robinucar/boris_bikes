class Bike
  def working?
    true
  end
end

class DockingStation
  attr_reader :dock
  def release_bike
    Bike.new
  end
  def dock_bike(bike)
    @dock = bike
  end
end
