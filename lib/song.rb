class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Set.new
  @@artists = Set.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genres.size
  end

  def self.artists_count
    @@artists.size
  end
end
