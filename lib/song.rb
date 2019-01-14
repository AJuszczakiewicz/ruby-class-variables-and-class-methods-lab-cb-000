class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Set.new
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@song_count += 1
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genres
  end

end