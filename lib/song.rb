require 'set'

class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end


  def self.count
    @@count
  end

  def self.genre
    @@genres << genre
  end

  def self.genre_count
    @@genres.to_set.size
  end

  def self.genre_count
  end

  def self.artists
    @@artists.to_set
  end

  def self.artist_count
  end
end
