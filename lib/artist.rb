class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end





end
