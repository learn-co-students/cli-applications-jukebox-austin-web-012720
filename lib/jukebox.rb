require 'pry'

songs = [
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
  puts ("I accept the following commands:")
  puts("- help : displays this help message")
  puts("- list : displays a list of songs you can play")
  puts("- play : lets you choose a song to play")
  puts ("- exit : exits this program")
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
    #binding.pry
  if songs.include?(input)
    selection = songs.detect {|music| music == input}
    puts "Playing #{selection}"
  elsif input.to_i >= 1 && input.to_i <= songs.length+1
    puts "Playing #{songs[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  index = 0 
  while index < songs.size 
    puts "#{index+1}. #{songs[index]}"
    index += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ''
  
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp

    case input
    when "play" 
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
    end
  end
end

