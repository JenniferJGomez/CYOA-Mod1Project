def welcome_message
    puts "Welcome to your own Zombie Survival Adventure."
end

def will_play?
    puts "Will you survive? Type in yes or no."
    user_input = gets.chomp
    if user_input == "yes"
        puts "My the odds be ever in your favor..."
    elsif user_input == "no"
        puts "Suit yourself weakling. Dueces!"
    else
        puts "It's a yes or no question dumb dumb. Try again!"
        will_play?
    end
end

welcome_message
will_play?
