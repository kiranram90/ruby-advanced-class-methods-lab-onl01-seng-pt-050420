class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create
    self.new
  end
    
  def self.new_by_name(name)
    new_song = self.new 
    new_song.name = song_name
  end
  
  def self.create_by_name(name_of_song)
    new_song = self.new 
    new_song.name = name_of_song
    
    new_song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
    
  def self.find_or_create_by_name(name)
    found_song = self.find_by_name(name)
    
    if found_song == nil 
      self.create_by_name(name)
    else
      found_song
    end
  end
  
  def self.alphabetical 
     @@all.sort_by { |song| song.name }
  end
  
  def self.alphabetical 
     @@all.sort_by { |song| song.name }
  end

  def save
    self.class.all << self
  end

end
