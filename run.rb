require_relative './config/environment.rb' 
require 'pry'

@current_scene = nil

def welcome_message
    puts "Welcome to your own Zombie Survival Adventure."
end

def will_play?
    puts "Will you survive? Type in yes or no."
    user_input = gets.chomp
    if user_input == "yes"
        start_game
        play_scene
        choose_next
    elsif user_input == "no"
        exit_game
    else
        puts "It's a yes or no question dumb dumb. Try again!"
        will_play?
    end
end

def exit_game
    puts "Suit yourself weakling. Dueces!"
end

def exit_as_a_w
    puts "Thanks for playing"
end

def start_game
    @current_scene = Scene.first
end

def play_scene
  puts @current_scene.scene_text
  @current_scene.next_scenes.each_with_index do |scene, index|
    puts "Option #{index + 1}: #{scene.title_text}"
  end
end

def choose_next
  user_input = gets.chomp.to_i
    if user_input != 1 && user_input != 2
      puts "Please enter 1 or 2"
      choose_next
    else
      @current_scene = @current_scene.next_scenes[user_input-1]
      lose?
    end
end

def lose?
    if @current_scene.lose == "true"
        lose_game
    elsif @current_scene.lose == "false"
        win_game
    else
        play_scene
        choose_next
    end
end

def lose_game
    death_string = <<EOM
    *********
    *************
   *****     *****
  ***           ***
 ***             ***
 **    0     0    **
 **               **                  ____
 ***             ***             //////////
 ****           ****        ///////////////  
 *****         *****    ///////////////////
 ******       ******/////////         |  |
*********     ****//////               |  |
*************   **/////*****              |  |
*************** **///***********          *|  |*
************************************    ****| <=>*
*********************************************|<===>* 
*********************************************| <==>*
***************************** ***************| <=>*
******************************* *************|  |*
********************************** **********|  |*   
*********************************** *********|  |
EOM
    puts death_string
    exit_game
end

def win_game
    win_string = <<EOM
    ▓██   ██▓ ▒█████   █    ██      ██████  █    ██  ██▀███   ██▒   █▓ ██▓ ██▒   █▓▓█████ ▓█████▄ 
    ▒██  ██▒▒██▒  ██▒ ██  ▓██▒   ▒██    ▒  ██  ▓██▒▓██ ▒ ██▒▓██░   █▒▓██▒▓██░   █▒▓█   ▀ ▒██▀ ██▌
     ▒██ ██░▒██░  ██▒▓██  ▒██░   ░ ▓██▄   ▓██  ▒██░▓██ ░▄█ ▒ ▓██  █▒░▒██▒ ▓██  █▒░▒███   ░██   █▌
     ░ ▐██▓░▒██   ██░▓▓█  ░██░     ▒   ██▒▓▓█  ░██░▒██▀▀█▄    ▒██ █░░░██░  ▒██ █░░▒▓█  ▄ ░▓█▄   ▌
     ░ ██▒▓░░ ████▓▒░▒▒█████▓    ▒██████▒▒▒▒█████▓ ░██▓ ▒██▒   ▒▀█░  ░██░   ▒▀█░  ░▒████▒░▒████▓ 
      ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒    ▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░   ░ ▐░  ░▓     ░ ▐░  ░░ ▒░ ░ ▒▒▓  ▒ 
    ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░    ░ ░▒  ░ ░░░▒░ ░ ░   ░▒ ░ ▒░   ░ ░░   ▒ ░   ░ ░░   ░ ░  ░ ░ ▒  ▒ 
    ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░    ░  ░  ░   ░░░ ░ ░   ░░   ░      ░░   ▒ ░     ░░     ░    ░ ░  ░ 
    ░ ░         ░ ░     ░              ░     ░        ░           ░   ░        ░     ░  ░   ░    
    ░ ░                                                          ░            ░           ░        
EOM
puts win_string
exit_as_a_w
end

welcome_message
will_play?