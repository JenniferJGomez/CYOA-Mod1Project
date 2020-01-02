class Option < ActiveRecord::Base
    # belongs_to :choice
    # has_many :scenes
    belongs_to :base_scene, :class_name => "Scene"
    belongs_to :next_scene, :class_name => "Scene"

    # def scene_id
    #     Option.all.map {|opt| opt.next_scene_id}
    # end

end


