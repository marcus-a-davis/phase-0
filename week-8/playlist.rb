# Create a Playlist from Driver Code

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# Pseudocode
=begin
	
create Song class
create Playlist class
define add method for Playlist
define method num of tracks for Playlist
define method play for Song
define method remove for Playlist
define method play_all for Playlist
define method includes? for Playlist
define method display for Playlist
=end


# Initial Solution
class Song
  def initialize(song, artist)
  	# unless songs.is_a?(String)
  	#   raise ArgumentError.new("Song names must be strings")
  	# end
  	@song = {song => artist}
  	p @song
  end

  def play(*songs)

  end

  # def push(*songs)
  # 	@songs = songs.each { |song| @songs << song }
  # end


end

class Playlist
  def initialize(*songs)
  	# unless songs.is_a?(Song)
  	#   raise ArgumentError.new("Song names must be strings")
  	# end
  	@playlist = []
  	@playlist << songs
  	p @playlist.length
  end

  def add(*songs)
  	@playlist << songs
  	p @playlist.length
  end

  def num_of_tracks
  	return @playlist.length
  end

  def remove(*lists)
  	
  end

  def includes?(list)
  	
  end

  def play_all
  	# return @lists.length
  end

  def display
  	# return @lists.length
  end
end



# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

=begin
	
What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?
	
=end