class Scene < ActiveRecord::Base
    has_many :options,
        foreign_key:
            :base_scene



end