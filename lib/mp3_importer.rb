class MP3Importer

  attr_accessor :path

  @@all = []
  def initialize(filepath)
    @path = filepath
  end

  def files
    files = Dir["#{@path}/**/*.mp3"]
    files.map {|filename| filename.gsub(@path + "/", "")}
    # binding.pry
  end

  def import
    self.files.each do |filename|
      file_details = filename.split(" - ")
      new_song = Song.new_by_filename(filename)
      
    end
  end
end
