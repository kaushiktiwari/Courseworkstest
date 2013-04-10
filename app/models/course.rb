class Course
  include Mongoid::Document

  has_and_belongs_to_many :users
  has_many :lectures
  embeds_many :assignments

  field :course_name, type: String
  field :instructor, type: String
end
