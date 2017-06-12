class Song

  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(filename)
    file_name = filename.split(" - ")
    new_song = self.new(file_name[1])
    song_artist = Artist.find_or_create_by_name(file_name[0])
    song_artist.add_song(new_song)
    new_song.artist = song_artist
    new_song
  end

end
