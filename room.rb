class Room

  attr_accessor :capacity, :room_song_list, :checked_in_guests

  def initialize(capacity, room_song_list)
    @capacity = capacity
    @room_song_list = []
    @checked_in_guests = []
  end

  def check_in_guest(guest)
    @checked_in_guests.push(guest)
  end

  def guest_count
    return @checked_in_guests.length
  end


end
