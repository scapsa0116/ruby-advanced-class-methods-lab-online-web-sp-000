class Song
  attr_accessor :name, :artist_name
  @@all = []


def  initialize(name) 
  @name = name
  @@all << self
end

  
  def self.all
    @@all
   end

  
  def save
    self.class.all << self
  end
   
   
  # def self.create
  #   self.class.all << @name
  # end 
   
   def self.create(name)
     song = self.new(name)
     song.save
   end
 
 def new_by_name(name)
   @@all.find {|person| person.name == name}
   peson
 end


def self.destroy_all
  @@all = []
end

end

