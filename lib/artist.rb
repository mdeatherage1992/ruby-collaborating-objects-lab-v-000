class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << name
  end

  def add_song(song)
    song.artist = self
  end





end
