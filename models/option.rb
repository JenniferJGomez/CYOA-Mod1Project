class Option < ActiveRecord::Base
    belongs_to :base_scene,
        :class_name => "Scene"
        belongs_to :next_scene,
            :class_name => "Scene"
end