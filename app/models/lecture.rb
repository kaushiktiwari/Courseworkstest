class Lecture
  include Mongoid::Document

  has _many :users
  has_one   :course
  
  field :time, type: String
  field :days_of_week, type: String
  field :room_no, type: String

  
end
