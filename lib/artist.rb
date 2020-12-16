require 'pry'

class Artist
    def initialize (name)
        @name = name
        @@all << self
    end

    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_instance)
        song_instance.artist = self
    end

    def self.find_or_create_by_name(artist_string)
        #binding.pry
        if self.all.find {|artist| artist.name == artist_string}
            self.all.find {|artist| artist.name == artist_string}
        else
            Artist.new(artist_string)
        end
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end
end