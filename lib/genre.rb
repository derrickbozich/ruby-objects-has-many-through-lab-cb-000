class Genre

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self

  end

  def new_song(name, artist)
    song = Song.new(name,artist,self)
    # @@all << song
  end

  def songs
    Song.all {|song| song.genre == self}
  end

  def artists
    # @@all.map {|songs| song.artist }
    songs.map {|song| song.artist}
  end
end
