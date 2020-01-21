require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')


class BusTest < MiniTest::Test
  def setup
    @bus = Bus.new("10", "Glasgow")
    @person1 = Person.new("Bob", "156")
    @person2 = Person.new("John", "15")
    @person3 = Person.new("Ralph", "90")
    @bus_stop = BusStop.new("Graham Street")
  end

  def test_drive
    assert_equal("Yohoo", @bus.drive())
  end

  def test_query_passengers
    assert_equal(0 ,@bus.query_passengers())
  end

  def test_add_passenger
    @bus.add_passenger(@person1)
    assert_equal(1, @bus.query_passengers())
  end

  def test_remove_passenger
    @bus.add_passenger(@person1)
    @bus.remove_passenger(@person1)
    assert_equal(0, @bus.query_passengers())
  end

  def test_empty_bus
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.add_passenger(@person3)
    @bus.empty_bus()
    assert_equal(0, @bus.query_passengers())
  end

  def test_empty_bus_stop
    @bus_stop.add_person_to_stop(@person1)
    @bus_stop.add_person_to_stop(@person2)
    @bus_stop.add_person_to_stop(@person3)
    @bus.empty_bus_stop(@bus_stop)

    assert_equal(3 ,@bus.query_passengers())
    assert_equal(0, @bus_stop.get_queue_length())
  end

end
