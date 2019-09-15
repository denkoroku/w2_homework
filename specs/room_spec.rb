require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../karaoke.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new(20,["The Wombles", "Trumptown"])
    @room2 = Room.new(14,["Slide Away"])
    @room3 = Room.new(12,[])
    @room4 = Room.new(10,[])
    @guest1= Guest.new("Gee", 45, 120)
    @guest2= Guest.new("Ethel", 95, 1200)
    @guest3= Guest.new("Fiona", 49, 20)
    @song1 = Song.new("Jolene", "Dolly Parton", 235, "country")
  end

  def test_can_create_room()
    assert_equal(Room, @room1.class())
  end

  def test_check_in_guest()
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_check_out_guest()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_out_guest(@guest2)
    assert_equal(2, @room1.guest_count())
  end

  def test_can_add_song()
    @room1.add_song(@song1)
    assert_equal(1, @room1.song_count)
  end

end
