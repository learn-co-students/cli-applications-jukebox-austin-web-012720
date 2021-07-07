# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def play(songs)
puts "Please enter a song name or number:"
request = gets.strip
if songs.include?(request)
  puts "Playing #{request}"
elsif (request.to_i - 1 < songs.length) && (request.to_i - 1 >= 0)
  index = request.to_i - 1
  puts "Playing #{songs[index]}"
else
  puts "Invalid input, please try again"
end
end
def list(songs)
  songs.each_with_index {|songname, index|
  puts "#{index + 1}. #{songname}"}
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)

#help
puts "Please enter a command:"
input = gets.chomp
while input != "exit" do

  if input == "play"
  play(songs)
  input = gets.chomp
  elsif input == "list"
  list(songs)
  input = gets.chomp
  elsif input == "help"
  help
  input = gets.chomp
  elsif input == "exit"

  exit_jukebox
  else
  puts "Invalid input, try again"
  input = gets.chomp
  end
end

exit_jukebox
end
