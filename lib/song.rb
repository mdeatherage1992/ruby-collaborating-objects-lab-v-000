class Song
  attr_accessor :name,:song,:artist

  def initialize(name)
    @name = name
  end
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song
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
