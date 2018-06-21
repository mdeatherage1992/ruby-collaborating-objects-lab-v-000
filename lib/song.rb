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
    new_name = filename.split(" - ")[1]
    song = self.new(new_name)
  end



end
