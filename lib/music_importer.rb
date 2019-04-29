class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
  end

  def import(file_name)
    file_name.each do |filename|
      Song.create_from_filename(filename)
    end
  end
end
