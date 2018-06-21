require "pry"
class Artist
  attr_accessor :name, :songs, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist,name|
      if artist.name == name
        artist
      else
        name = self.new(name)
      end
    end
  end

end
