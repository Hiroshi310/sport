class Area < ActiveRecord::Base
    acts_as_nested_set
    has_many :events
end
