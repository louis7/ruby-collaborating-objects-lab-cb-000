
require "pry"
class Artist

attr_accessor :name , :songs
@@all =[]

def initialize(name)
@name = name
@songs = []

end

def save
  @@all<<self
  return self
end
def self.find_or_create_by_name(name)
   @@all.each do|item|
     if item.name == name
       return item
  end
end
    artist = Artist.new(name)
    artist.save
end


def add_song(song)
  @songs << song
end


def self.all
  @@all
end



def print_songs
   @songs.collect { |song| puts song.name }
end



end
