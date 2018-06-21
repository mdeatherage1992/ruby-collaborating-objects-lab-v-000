require "pry"
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.name = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
     Song.find_by_artist(self)
   end
   
  def print_songs
    songs.each {|song| puts song.name}
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
