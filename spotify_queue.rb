class SpotifyQueue
  attr_reader :queue 

  def initialize
    @queue = []
  end

  def enqueue(song)
    @queue << song
  end

  def dequeue(song)
    @queue.delete(song)
  end
end