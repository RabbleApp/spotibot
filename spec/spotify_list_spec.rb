require_relative "../spotify_list"

describe SpotifyList do
  describe "#next" do
    it "returns consecutive items of the list and loops around" do
      songs = ["katy perry", "michael jackson"]
      list = SpotifyList.new(songs)

      expect(list.next).to eq(songs[0])
      expect(list.next).to eq(songs[1])
      expect(list.next).to eq(songs[0])
    end
	end
end