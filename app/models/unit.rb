class Unit < ApplicationRecord
  belongs_to :course
  delegate :name, :description, :to => :course, :prefix => true
end
