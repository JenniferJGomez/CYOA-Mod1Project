require_relative './config/environment.rb' 
require 'pry'

def welcome_message
    puts "Welcome to your own Zombie Survival Adventure."
end

def will_play?
    puts "Will you survive? Type in yes or no."
    user_input = gets.chomp
    if user_input == "yes"
        start_game
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

def start_game
    puts Scene.first.scene_text
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

def find_next_scene_id
  Option.all.map {|option| option.next_scene_id}
end

def selects_scene_id
    user_input = gets.chomp
    Choice.all.select do |choice|
      choice.name == user_input
          return choice.option.find_next_scene_id
        #binding.pry
    end
end

def win_or_lose?
    # user_input = gets.chomp
    # case user_input
    # when user_input == "A" || "B"
    # end

    if selects_scene_id != nil 
        selects_scene_id
    else 
        lose_game 
        will_play?
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

selects_scene_id
welcome_message
will_play?
