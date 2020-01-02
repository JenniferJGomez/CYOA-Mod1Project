require_relative './config/environment.rb' 

def welcome_message
    puts "Welcome to your own Zombie Survival Adventure."
end

def will_play?
    puts "Will you survive? Type in yes or no."
    user_input = gets.chomp
    if user_input == "yes"
        start_game
    elsif user_input == "no"
        end_game
    else
        puts "It's a yes or no question dumb dumb. Try again!"
        will_play?
    end
end

def end_game
    puts "Suit yourself weakling. Dueces!"
end

def start_game
    puts Scene.first.scene_text
end

# def choose_option
#     user_input = gets.chomp
#     if user_input == "A"
#         puts #options.path_id
# end


welcome_message
will_play?
