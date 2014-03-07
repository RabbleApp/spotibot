class SpotifyList

  def initialize(songs)
    @songs = songs
    @current_index = 0
  end

  def next
    next_song = @songs[@current_index]
    increment_or_reset_index
    next_song
  end

  private
  def increment_or_reset_index
    if @current_index == @songs.length - 1
      @current_index = 0
    else
      @current_index += 1
    end
  end
end