require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')
require_relative('../bus')
require_relative('../person')


class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("Bob", "156")
    @person2 = Person.new("John", "15")
    @person3 = Person.new("Ralph", "90")
    @bus_stop = BusStop.new("Graham Street")

  end


  def test_add_person_to_stop
    @bus_stop.add_person_to_stop(@person1)
    assert_equal(1, @bus_stop.get_queue_length)
  end

  

end
