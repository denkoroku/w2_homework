class Karaoke

  attr_accessor :entry_fee, :rooms, :bar_songlist

  def initialize (entry_fee, rooms, bar_songlist)
    @entry_fee = entry_fee
    @rooms = rooms
    @bar_songlist = bar_songlist
  end

  # def check_in_guest(guest)
  # end
  #
  # def check_out_guest(guest)
  # end

  def add_new_song(new_song)
    @bar_songlist.push(new_song)
  end
end
