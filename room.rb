class Room

  attr_accessor :capacity, :room_song_list, :checked_in_guests

  def initialize(capacity, room_song_list)
    @capacity = capacity
    @room_song_list = room_song_list
    @checked_in_guests = []
  end

  def check_in_guest(guest)
    if @checked_in_guests.length < @capacity-1
      @checked_in_guests.push(guest)
      guest.wallet -=5
    else
      return "Sorry the room is full"
    end
  end

  def check_out_guest(guest)
    index = @checked_in_guests.index(guest)
    @checked_in_guests.slice!(index,1)
  end

  def guest_count
    return @checked_in_guests.length
  end

  def song_count
    return @room_song_list.length
  end

  def add_song(song)
    @room_song_list.push(song)
  end

end
