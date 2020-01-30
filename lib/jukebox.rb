# Add your code here
playlist = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(playlist)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if playlist.include?(user_input)
    puts "Playing #{user_input}"
  elsif user_input.to_i > 0 && user_input.to_i < 10
    puts "Playing #{playlist[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(playlist)
  playlist.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
  # command = " "
    puts "Please enter a command:"
    command = gets.strip
    case command
    when "list"
      list(playlist)
    when "play"
      list(playlist)
      play(playlist)
    when "help"
      help
    when "exit"
      exit_jukebox
    else help
      end
end
