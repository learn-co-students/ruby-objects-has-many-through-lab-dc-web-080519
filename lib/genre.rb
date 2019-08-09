class Genre
    attr_reader :genre, :name
    @@all = []
    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end


    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre.name == self.name
        end
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end


end
