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

def death_break
    if @current_scene == 
        welcome_message
        will_play
    end
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
        welcome_message
        will_play
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
    # Scene.last.scene_text
    will_play?
end

def selects_scene_id
    user_input = gets.chomp
    Choice.all.select do |choice|
      choice.name == user_input
          return choice.option.scene_id
        #binding.pry
    end
end


# def choose_option
#     user_input = gets.chomp
#     case user_input
#     when == winning_game
#         puts 
#     when == losing_game
#         puts lose_game
#     end 
# end

# selects_scene_id
welcome_message
will_play?
