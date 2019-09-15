require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')
require_relative ('../karaoke')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Fred", 52, 100)
    @guest2 = Guest.new("Bob", 32, 50)
    @guest3 = Guest.new("Jenny", 42, 200)
    @guest4 = Guest.new("Jo", 99, 400)
  end
end
