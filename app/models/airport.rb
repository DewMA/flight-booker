class Airport < ApplicationRecord
    has_many :from, :class_name => 'Flight', :foreign_key => 'from_id'
    has_many :to, :class_name => 'Flight', :foreign_key => 'from_id'
end
