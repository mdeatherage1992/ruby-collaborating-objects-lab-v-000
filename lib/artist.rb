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
    existing_artist = ''
    @@all.each do |artist|
      if artist.name == name
        existing_artist = artist
      end
    end
    existing_artist
  end

end
