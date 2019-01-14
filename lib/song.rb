class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Hash.new
  @@artists = Hash.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    if @@genres.has_key?(genre)

    end
    @@count += 1
  end

  def add_genre(genre)
    if @@genres.has_key?(genre)
      @@genres[genre] = +1
    else
      @@genres[genre] = 1
    end
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.keys
  end

  def self.genre_count
    @@genres.keys.size
  end

  def self.artists_count
    @@artists.keys.size
  end
end
