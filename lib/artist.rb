class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs << Song.new
  end

  def save
    @@all << @name
  end



end
