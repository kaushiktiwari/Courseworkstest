class Assignment
  include Mongoid::Document
  
  embedded_in :user
  embedded_in :course
  
  field :deadline, type: Date
  field :grade, type: String
end
