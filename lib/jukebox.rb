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

def list(playlist)
  playlist.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(playlist)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  playlist.each_with_index do |song, index|
    if user_input.to_i && user_input.to_i == index + 1
      puts "Playing #{playlist[index]}"
      return playlist[index]
    elsif user_input == song
      puts "Playing #{song}"
      return song
    else
      puts "Invalid input, please try again"
      return "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(playlist)
  loop do
    prompt = puts "Please enter a command:"
    user_input = gets.strip

    case user_input
      when 'help'
        help
      when 'list'
        list(playlist)
      when 'play'
        play(playlist)
      when'exit'
        break
      end
    end

  exit_jukebox
end
