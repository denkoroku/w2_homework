require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')
require_relative ('../karaoke')
require_relative ('../room')
require_relative ('../song')

class TestKaraoke < MiniTest::Test

  def setup
    @song1 = Song.new("Jolene", "Dolly Parton", 235, "country")
    @song2 = Song.new("Mr Brightside", "The Killers", 167, "indie")
    @song3 = Song.new("Bohemian Rhapsody", "Queen", 320, "rock")
    @song4 = Song.new("Circus", "Britney Spears", 180, "pop")
    @bar_songlist = [@song1, @song2, @song3, @song4]
    @new_song1 = Song.new("I'm a little teapot", "Short and Stout", 340, "kids")
  end

  def test_setup
    assert_equal(4, @bar_songlist.count)
  end

  def test_add_new_song
    @bar_songlist.add_new_song(@new_song1)
    assert_equal(5, @bar_songlist.count)
  end


end
