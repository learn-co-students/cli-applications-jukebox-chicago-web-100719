require "pry"

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

#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"
  end
end

 def play (songs)
   puts "Please enter a song name or number:"
   song_input = gets.strip
   songs.each.with_index(1) do |value, index|
     if song_input == value || song_input == index.to_s
      puts "Playing #{value}"
      return value
     end
   end
   puts "Invalid input, please try again"
   return "Invalid input, please try again"
 end
 
 def exit_jukebox
   puts "Goodbye"
 end
 
 def run (songs)
   input = ""
   puts "Please enter a command:"
   while input != "exit" do
     input = gets.strip
     if input == "help"
       help
     elsif input == "list"
       list (songs)
     elsif input == "play"
       play (songs)
     elsif input == "exit"
       exit_jukebox
     end
   end
 end
   

