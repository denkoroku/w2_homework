require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')
require_relative ('../karaoke')
require_relative ('../room')
require_relative ('../song')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Fred", 52, 100,"The Wombles")
    @guest2 = Guest.new("Bob", 32, 50, "Mr Brightside")
    @guest3 = Guest.new("Jenny", 42, 200, "Bohemian Rhapsody")
    @guest4 = Guest.new("Jo", 99, 400, "Circus")
    @room1 = Room.new(20,["The Wombles", "Trumptown"])
  end

  def test_can_create_guest()
    assert_equal(Guest, @guest1.class())
  end

  def test_favourite_song
   @room1.check_in_guest(@guest1)
   assert_equal("WOOOOHOOOO", @guest1.favourite_song(@room1))
  end

end
