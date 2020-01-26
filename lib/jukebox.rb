# Add your code here
require "pry"
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
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif choice.to_i != 0 && choice.to_i <= 9
    puts "Playing #{songs[choice.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end 



def list(array)
  array.each_with_index { |item, index|
    puts "#{index + 1}. #{item}"
  }
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  prompt = "Please enter a command:"
  puts prompt
    while command = gets.chomp
    case command 
    when "list"
      list(songs)
      puts prompt
    when "play"
      play(songs)
      puts prompt
    when "help"
      help
      puts prompt
    when "exit"
      exit_jukebox
      break
    end
  end
end 