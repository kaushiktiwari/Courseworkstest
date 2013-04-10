class Lecture
  include Mongoid::Document

  belongs_to  :course
  
  field :time, type: String
  field :days_of_week, type: String
  field :room_no, type: String

end
