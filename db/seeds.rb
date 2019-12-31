require_relative '../config/environment.rb' 


s1 = Scene.create(title_text: "Get started!", scene_text: "Start: You wake up in your room, turn on the news, and realize you are in the middle of the zombie apocolypse. What will you do?")
s2 = Scene.create(title_text: "It's scary outside. Stay inside", scene_text: "You decided to stay inside, zombies found you, climbed through your windows, and now you're dead ya dingus")
s3 = Scene.create(title_text: "They're coming. It's time to run", scene_text: "You get the hell out of Dodge and evade the zombies climbing through your window. A new hoard is rushing towards your porch. What do you grab to protect your ass?")
s4 = Scene.create(title_text: "Grab baguette", scene_text: "You see your usual porch baguette, decide you need a snack before moving on, and so did the zombies. Now you are dead you're dead ya dingus.")
s5 = Scene.create(title_text: "Grab Ninja Sword", scene_text: "You spot your ninja sword you always leave on your porch like a total badass.")
s6 = Scene.create(title_text: "Duck behind car", scene_text: "You hide behind a car like the dumb dumb you are and now you are dead ya dingus")
s7 = Scene.create(title_text: "Fight Back!", scene_text: "You Michonne your way out of the zombie hoard and you survived! ...for now.")

s1.options << s2
s1.options << s3
s3.options << s4
s3.options << s5
s5.options << s6
s5.options << s7




