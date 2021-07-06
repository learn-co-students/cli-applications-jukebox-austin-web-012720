require "pry"

def help
  puts "I accept the following commands:"
  puts "   - help : displays this help message"
  puts "   - list : displays a list of songs you can play"
  puts "   - play : lets you choose a song to play"
  puts "   - exit : exits this program"

end

def play(songs)
 puts "Please enter a song name or number:"
  user_response = gets.strip
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i.between?(1,9)  
    index = user_response.to_i - 1
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = nil
  until command == "exit"
  puts "Please enter a command:"
  command = gets.strip
    case command
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "help"
       help
    end
  end
  exit_jukebox
end