def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  ans = gets.chomp
  if ans.to_i >= 1 && ans.to_i <= songs.length
    puts "Playing #{songs[ans.to_i-1]}"
  elsif songs.include?(ans)
    puts "Playing #{songs.find{|song| song == ans}}"
  else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  while true do
    puts "Please enter a command:"
    ans = gets.chomp
    case ans
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end
