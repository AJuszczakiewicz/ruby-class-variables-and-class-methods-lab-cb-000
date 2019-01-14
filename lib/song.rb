class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Hash.new
  @@artists = Hash.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.keys
  end

  def self.genre_count
    @@genres.size
  end

  def self.artists_count
    @@artists.size
  end
end
