class Option < ActiveRecord::Base
    belongs_to :base,
        :class_name => "Scene"
    belongs_to :outcome,
        :class_name => "Scene"
end