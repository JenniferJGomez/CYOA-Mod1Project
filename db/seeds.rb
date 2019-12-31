require_relative '../config/environment.rb' 

Scene.destroy_all
Option.destroy_all

#  you need a key :options for each instance so that you can associate which scene to which.
s1 = Scene.create(title_text: "Get started!", scene_text: "Start: You wake up in your room, turn on the news, and realize you are in the middle of the zombie apocolypse. What will you do?")
s2 = Scene.create(title_text: "It's scary outside. Stay inside", scene_text: "You decided to stay inside, zombies found you, climbed through your windows, and now you're dead ya dingus")
s3 = Scene.create(title_text: "They're coming. It's time to run", scene_text: "You get the hell out of Dodge and evade the zombies climbing through your window. A new hoard is rushing towards your porch. What do you grab to protect your ass?")
s4 = Scene.create(title_text: "Grab baguette", scene_text: "You see your usual porch baguette, decide you need a snack before moving on, and so did the zombies. Now you are dead you're dead ya dingus.")
s5 = Scene.create(title_text: "Grab Ninja Sword", scene_text: "You spot your ninja sword you always leave on your porch like a total badass.")
s6 = Scene.create(title_text: "Duck behind car", scene_text: "You hide behind a car like the dumb dumb you are and now you are dead ya dingus")
s7 = Scene.create(title_text: "Fight Back!", scene_text: "You Michonne your way out of the zombie hoard and you survived! ...for now.")
s8 = Scene.create(title_text: "Death", scene_text: "Ya dead ya dingus! Better luck next time loser.")


Option.create(base_scene_id: 1, next_scene_id: 2)
Option.create(base_scene_id: 1, next_scene_id: 3)
Option.create(base_scene_id: 2, next_scene_id: 1)
Option.create(base_scene_id: 2, next_scene_id: 8)
Option.create(base_scene_id: 3, next_scene_id: 4)
Option.create(base_scene_id: 3, next_scene_id: 5)
Option.create(base_scene_id: 4, next_scene_id: 1)
Option.create(base_scene_id: 4, next_scene_id: 8)
Option.create(base_scene_id: 5, next_scene_id: 6)
Option.create(base_scene_id: 5, next_scene_id: 7)
Option.create(base_scene_id: 6, next_scene_id: 1)
Option.create(base_scene_id: 6, next_scene_id: 8)

# s1.options << s2
# s1.options << s3
# s2.options << s1
# s2.options << s8
# s3.options << s4
# s3.options << s5
# s4.options << s1
# s4.options << s8
# s5.options << s6
# s5.options << s7




