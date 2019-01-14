class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Set.new
  @@artists = Set.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    #add_genre(genre)
    #add_artist(artists)
    @@count += 1
  end

  def add_genre(genre)
    @@genres.has_key?(genre) ? @@genres[genre] += 1 : @@genres[genre] = 1
  end

  def add_artist(artist)
    @@artists.has_key?(artist) ? @@artists[artist] += 1 : @@artists[artist] = 1
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

  def self.artists
    @@artists
  end

  def self.artists_count
    @@artists.keys.size
  end
end
