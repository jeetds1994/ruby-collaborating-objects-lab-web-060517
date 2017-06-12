class Artist

  attr_accessor :songs, :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
  self.all.find do |artist|
        puts name
        if artist.name == name
          return artist
        puts "I found #{artist.name}"
        end
      end
    artist = self.new(name)
    artist.save
    puts "I created #{artist.name}"
    artist
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
