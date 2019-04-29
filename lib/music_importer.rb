class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
  end

  def import(files)
    files.each do |filename|
      Song.create_from_filename(file_name)
    end
  end
end
