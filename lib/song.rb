class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Set.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

end
