class Artist
  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    # Song.all.push(song)
    # @songs << song
  end

  def songs
    # array = []
    Song.all.select {|song| song.artist == self}
    # songs = @songs.select {|song| song.artist == self}
    # array << songs
  end

  def genres
    songs.map {|song| song.genre}
    # @songs.map {|song| song.genre}
  end
end





#
# pablo = Artist.new("Pablo")
# psych = Genre.new("psych")
# dream_pop = Genre.new("Dream Pop")
# pablo.new_song('wildhigh',psych)
# pablo.new_song("daffodils", dream_pop)
# psych.songs
