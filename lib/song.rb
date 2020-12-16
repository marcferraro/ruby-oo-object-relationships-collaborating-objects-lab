require 'pry'

class Song
    def initialize (name)
        @name = name
        @@all << self
    end

    @@all = []

    attr_accessor :name, :artist

    def self.all
        @@all
    end

    def artist=(artist_instance)
        @artist = artist_instance
    end
end