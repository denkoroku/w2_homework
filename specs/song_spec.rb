require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song')
require_relative ('../karaoke')
require_relative ('../room')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Jolene", "Dolly Parton", 235, "country")
    @song2 = Song.new("Mr Brightside", "The Killers", 167, "indie")
    @song3 = Song.new("Bohemian Rhapsody", "Queen", 320, "rock")
    @song4 = Song.new("Circus", "Britney Spears", 180, "pop")
  end

  def test_can_create_song()
    assert_equal(Song, @song1.class())
  end

end
