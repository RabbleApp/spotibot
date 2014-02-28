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
    let(:queue) { SpotifyQueue.new }

    before do
      queue.enqueue("katy perry")
      queue.enqueue("michael jackson")
    end

    it "returns the first item in the queue" do
      expect(queue.next).to eq("katy perry")
    end

    it "removes the first item in the queue" do
      queue.next

      expect(queue.queue).to_not include("katy perry")
    end

    it "returns the consecutive items from the queue" do
      expect(queue.next).to eq("katy perry")
      expect(queue.next).to eq("michael jackson")
    end
  end
end




