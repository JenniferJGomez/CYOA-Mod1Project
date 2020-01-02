require_relative '../config/environment.rb' 

Scene.destroy_all
Option.destroy_all

#  you need a key :options for each instance so that you can associate which scene to which.
s1 = Scene.create(lose: nil, title_text: "Get started!", scene_text: "Start: You wake up in your room, turn on the news, and realize you are in the middle of the zombie apocolypse. What will you do? A.) Stay inside B.) Go Outside?")
s2 = Scene.create(lose: true, title_text: "It's scary outside. Stay inside", scene_text: "You decided to stay inside, zombies found you, climbed through your windows, and now you're dead ya dingus")
s3 = Scene.create(lose: nil, title_text: "They're coming. It's time to run", scene_text: "You get the hell out of Dodge and evade the zombies climbing through your window. A new hoard is rushing towards your porch. What do you grab to protect your ass?")
s4 = Scene.create(lose: true, title_text: "Grab baguette", scene_text: "You see your usual porch baguette, decide you need a snack before moving on, and so did the zombies. Now you are dead you're dead ya dingus.")
s5 = Scene.create(lose: nil, title_text: "Grab Ninja Sword", scene_text: "You spot your ninja sword you always leave on your porch like a total badass.")
s6 = Scene.create(lose: true, title_text: "Duck behind car", scene_text: "You hide behind a car like the dumb dumb you are and now you are dead ya dingus")
s7 = Scene.create(lose: nil, title_text: "Fight Back!", scene_text: "You Michonne your way out of the zombie hoard and you survived! ...for now.")
s8 = Scene.create(lose: nil, title_text: "Death", scene_text: "Ya dead ya dingus! Better luck next time loser.")


option1 = Option.create(base_scene_id: 1, next_scene_id: 2)
option2 = Option.create(base_scene_id: 1, next_scene_id: 3)
option3 = Option.create(base_scene_id: 2, next_scene_id: nil)
# Option.create(base_scene_id: 2, next_scene_id: 8)
option4 = Option.create(base_scene_id: 3, next_scene_id: 4)
option5= Option.create(base_scene_id: 3, next_scene_id: 5)
option6= Option.create(base_scene_id: 4, next_scene_id: nil)
# Option.create(base_scene_id: 4, next_scene_id: nil)
option7= Option.create(base_scene_id: 5, next_scene_id: 6)
option8= Option.create(base_scene_id: 5, next_scene_id: 7)
option9 = Option.create(base_scene_id: 6, next_scene_id: nil)
# Option.create(base_scene_id: 6, next_scene_id: 8)

choice1 = Choice.create(name: "Inside", scene: s2, option: option1)
choice2 = Choice.create(name: "Outside", scene: s3, option: option2)
choice3 = Choice.create(name: "Baguette", scene: s4, option: option4)
choice4 = Choice.create(name: "Sword", scene: s5, option: option5)
choice5 = Choice.create(name: "Hide", scene: s6, option: option7)
choice6 = Choice.create(name: "Fight", scene: s7, option: option8)
choice7 = Choice.create(name: "End Me", scene: s8, option: option9)
choice8 = Choice.create(name: "Try Again", scene: s1, option: option3)

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




