require "spec_helper"

describe SpotifyDj do
  describe "#next" do
    context "when there is no songs in the queue" do
      it "returns the next song on the list" do
        queue = double(:queue)
        list = double(:list)
        dj = SpotifyDj.new(queue: queue, list: list)

        allow(queue).to receive(:next).once { nil }

        expect(list).to receive(:next).once { "Katy perry" }

        expect(dj.next).to eq("Katy perry")
      end
    end

    context "when there are songs in the queue" do
      it "returns the next song in the queue" do
        queue = double(:queue)
        list = double(:list)
        dj = SpotifyDj.new(queue: queue, list: list)

        expect(queue).to receive(:next).once { "Katy perry" }

        expect(dj.next).to eq("Katy perry")
      end
    end
  end
end