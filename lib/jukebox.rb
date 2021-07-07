def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end

def play(songs) 
  puts "Please enter a song name or number:"
  response = gets.strip
  if response.to_i > 0 && response.to_i <= songs.length 
    puts "Playing #{songs[response.to_i - 1]}"
  elsif songs.include?(response) 
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
  puts "Please enter a command:"
  response = gets.strip
  
  case response 
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break 
    end
  end 
end