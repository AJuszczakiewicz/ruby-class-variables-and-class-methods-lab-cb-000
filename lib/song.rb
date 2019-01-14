require 'set'

class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = Hash.new
  @@artists_count = Hash.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    add_genre(genre)
    add_artist(artists)
    @@count += 1
  end

  def add_genre(genre)
    @@genre_count.has_key?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@genres << genre
  end

  def add_artist(artist)
    @@artists_count.has_key?(artist) ? @@artists_count[artist] += 1 : @@artists_count[artist] = 1
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.to_set
  end

  def self.genre_count
    @@genres.size
  end

  def self.genre_count
    @@genre_count
  end

  def self.artists
    @@artists.to_set
  end

  def self.artists_count
    @@artists.size
  end
end
