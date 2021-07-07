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
  answer = gets.strip
  number = answer.to_i-1
  
  
  if number<0  && songs.include?(answer)
    idx = songs.index(answer)
    puts "Playing #{songs[idx]}"
    
  elsif number >=0 && songs[number] !=nil
  puts "Playing #{songs[number]}"
  
  else 
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index do |song, track| 
  puts "#{track+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  input =""
  
  while input != "exit"
    puts "Please enter a command:"
    
    input = gets.strip
    
   if input == "exit"
     exit_jukebox
     break
   elsif input == "help"
     help
   elsif input == "list"
     list(songs)
   elsif input == "play"
     play(songs)
   end
 end
 end