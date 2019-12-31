class Option < ActiveRecord::Base
    belongs_to :base,
        :class_name => "Scene"
end