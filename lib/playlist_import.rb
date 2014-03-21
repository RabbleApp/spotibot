class PlaylistImport
  def initialize(playlist:nil, gateway:nil)
    @playlist = playlist
    @gateway = gateway
  end

  def run
    playlist.songs = gateway.songs
  end

  private
  attr_reader :playlist, :gateway
end
