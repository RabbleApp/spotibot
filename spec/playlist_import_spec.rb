require "spec_helper"

describe PlaylistImport do
  describe "#run" do
    let(:playlist) { Playlist.new(uri: "wawap") }
    let(:gateway) { double(:gateway) }
    let(:import) { PlaylistImport.new(playlist:playlist, gateway:gateway) }

    it "retrieves songs from spotify" do
      expect(gateway).to receive(:songs)

      import.run
    end

    it "adds the songs to the playlist" do
      songs = [
        { "artist" => "katy parry", "name" => "hot & cold :)" },
        { "artist" => "michael jackson", "name" => "smooth criminal"}
      ]
      allow(gateway).to receive(:songs) { songs }

      import.run
      expect(playlist.songs).to eq(songs)
    end
  end
end
