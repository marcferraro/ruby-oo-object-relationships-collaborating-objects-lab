require 'pry'

class MP3Importer
    def initialize(music_file_path)
        @path = music_file_path
    end

    attr_reader :path
end