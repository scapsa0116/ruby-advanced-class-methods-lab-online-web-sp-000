class Song
  attr_accessor :name, :artist_name
  @@all = []


  def self.all
    @@all
   end

  
  def save
    self.class.all << self
  end
   
   
  # def self.create
  #   self.class.all << @name
  #   self
  # end 
   
   def self.create
    song = self.new
    @@all << song
    song
  end
 
 def new_by_name(name)
   song = self.new
   song.new = name 
   song 
   
 end


def self.destroy_all
  @@all = []
end

end

