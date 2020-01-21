class Bus
  attr_reader :route_num, :destination
  def initialize(route_num, destination)
    @route_num = route_num
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Yohoo"
  end

  def query_passengers()
    return @passengers.length
  end

  def add_passenger(person_to_add)
    @passengers.push(person_to_add)
  end

  def remove_passenger(person_to_remove)
    @passengers.delete(person_to_remove)
  end

  def empty_bus()
    @passengers.clear()
  end

  def empty_bus_stop(bus_stop)
    @passengers.concat(bus_stop.get_people())
    bus_stop.empty_bus_stop()
  end
end
