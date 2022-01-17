class Song 

    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.new_by_filename(file_name)
        song = self.new(file_name.split(" - ")[1].split(".")[0])
        song.artist = Artist.new(file_name.split(" - ")[0])
        song
    end

    def artist_name= (name)
        self.artist = Artist.find_or_create_by_name(name)
        #self.artist ? artist.name = name : self.artist = Artist.new(name)
    end

end