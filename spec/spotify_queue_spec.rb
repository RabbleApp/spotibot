require_relative "../spotify_queue"

describe SpotifyQueue do
  describe "#enqueue" do
    it "adds the song at the end of the queue" do
      queue = SpotifyQueue.new
      queue.enqueue("moo")
      queue.enqueue("foo")
      last_song = queue.queue.pop
      expect(last_song).to eq("foo")
    end
  end
  describe "#dequeue" do
    it "removes the specified item from the queue" do
      queue = SpotifyQueue.new
      queue.enqueue("katy perry")
      queue.enqueue("katy perry")
      queue.enqueue("michael jackson")
      queue.enqueue("big o & hassan")

      queue.dequeue("katy perry")
      expect(queue.queue).to_not include("katy perry")
    end
  end

  describe "#next" do

  end
end