class Song
  # The Song class needs a class variable @@all that begins as an empty array.
  @@all = []

  # The Song class needs a class method .all that lists each song in the class variable.
  def self.all
    @@all
  end

  attr_accessor :name, :artist, :genre

  # A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@all << self
  end
end
