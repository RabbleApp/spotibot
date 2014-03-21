require "spec_helper"

describe Playlist do
  describe "#import" do
    it "imports the playlist with the playlist_importer" do
      playlist = Playlist.new(uri: "spotify://fettBraLåtCalle")
      playlist_import = double(:playlist_import)
      expect(PlaylistImport)
        .to receive(:new).with(playlist:playlist) { playlist_import }
      expect(playlist_import).to receive(:run)

      playlist.import
    end
  end
end
