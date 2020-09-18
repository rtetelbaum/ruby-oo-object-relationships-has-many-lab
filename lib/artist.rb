class Artist
    attr_accessor :name

    @@artists = []

    def initialize(name)
        @name = name
        @@artists << self
    end

    def self.artists
        @@artists
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        #self is the artist instance
    end

    def songs
        Song.all.find_all { |song| song.artist == self }
    end

    def self.song_count
        Song.all.count
    end
end