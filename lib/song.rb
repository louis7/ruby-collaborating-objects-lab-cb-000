require "pry"

class Song
attr_accessor :name, :artist



def initialize (name)
  @name = name
end
def artist=(artist_name)
  @artist = artist_name
end


def artist_name=(name)
  if self.artist == nil
    self.artist = Artist.new(name)
  else
    self.artist.name = name
end
end



def self.new_by_filename(file_name)
    song_name = file_name.split("-")[1].strip
    song_artist = file_name.split("-")[0].strip
    song = self.new(song_name)
    song.artist = Artist.new(song_artist)
    song
  end




end
