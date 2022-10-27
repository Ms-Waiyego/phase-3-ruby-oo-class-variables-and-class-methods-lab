class Song

  @@count =0
  @@genres = []
  @@artists = []

  attr_accessor :name,:artist,:genre
  def initialize (name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre

    @@count +=1
    @@genres << genre
    @@artists << artist
    
  end
  
  def self.count
   @@count
    end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count 
    @@genres.uniq.each do |g|
        @@genre_count[g] = @@genres.count(g)
    end 
    @@genre_count
end

def self.artist_count
  @@artists.uniq.each do |a|
    @@artist_count[a] = @@artists.count(a)
  end
  @@artist_count
  
end
end