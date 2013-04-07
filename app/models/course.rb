class Course
  include Mongoid::Document

  	has_many :users
	has_many :lectures
	embedded_many :assignments
  	
  	field :course_name, type: String
  	field :instructor, type: String
end
