class SpotifyList

  def initialize(songs)
    @songs = songs
    @current_index = 0
  end

  def next
    next_song = @songs[@current_index]
    @current_index += 1
    next_song
  end
end