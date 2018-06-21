class Song
  attr_accessor :name,:song,:artist,:title

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

  def self.new_by_filename(file_name)
    song = self.new(name)
    song.name = file_name.split(" - ")[1]
    song
  end



end
