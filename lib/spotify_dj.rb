class SpotifyDj
  def initialize(options)
    @list = options.fetch(:list)
    @queue = options.fetch(:queue)
  end

  def next
    @queue.next || @list.next
  end
end