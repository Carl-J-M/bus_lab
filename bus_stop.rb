class BusStop
  def initialize(name)
    @name = name
    @queue = []
  end

  def get_queue_length()
    return @queue.length
  end

  def get_people()
    return @queue
  end

  def add_person_to_stop(person_to_add)
    @queue.push(person_to_add)
  end

  def empty_bus_stop()
    @queue.clear()
  end
end
