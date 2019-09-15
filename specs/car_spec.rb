require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class TestCar < Minitest::Test
  def setup
    @car = Car.new()
  end

  def test_car_can_start_engine
    assert_equal("Vrrmmm", @car.start_engine)
  end

end
