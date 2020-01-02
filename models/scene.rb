class Scene < ActiveRecord::Base
    belongs_to :choice
    
    has_many :options,
        foreign_key:
            :base_scene

    has_many :choices

end