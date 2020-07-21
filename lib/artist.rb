
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self }
        # takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
        # takes in an argument of a song name, creates a new song with it and associates the song and artist
    end

    def self.song_count
        Song.all.count
        # a class method that returns the total number of songs associated to all existing artists
    end

end

