class Playlist
  attr_accessor :songs
  
  def initialize(uri:nil)

  end

  def import
    playlist_import = PlaylistImport.new(playlist:self)
    playlist_import.run
  end
end
