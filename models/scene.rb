class Scene < ActiveRecord::Base
    has_many :options,
        foreign_key:
            :base_scene

    has_many :choices

end