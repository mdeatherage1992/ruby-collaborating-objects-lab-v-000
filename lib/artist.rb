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

  def print_songs
    list = ''
    @@all.each do |artist|
      list += artist.song
    end
    list
  end

    end

  def self.find_or_create_by_name(name)
    existing_artist = ''
    @@all.each do |artist|
      if artist.name == name
        existing_artist = artist
      end
    end
    if existing_artist == ''
      existing_artist = self.new(name)
    end
    existing_artist
  end

end
