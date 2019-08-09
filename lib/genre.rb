class Genre
  # Genre class needs a class variable @@all that begins as an empty array.
  @@all = []

  # The Genre class needs a class method .all that lists each genre in the class variable.
  def self.all
    @@all
  end
  attr_accessor :name

  # A genre should be initialized with a name and be saved in the @@all array.
  def initialize(name)
    @name = name
    @@all << self
  end

  # The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all.find_all do |song|
      song.genre == self
    end
  end

  # The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
