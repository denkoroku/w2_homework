class Guest

  attr_accessor :name, :age, :wallet, :fave

  def initialize (name, age, wallet, fave)
    @name = name
    @age = age
    @wallet = wallet
    @fave = fave
  end

  def favourite_song(room)
    if room.room_song_list.find{ |song| song == @fave}
      return "WOOOOHOOOO"
    end
  end


end
