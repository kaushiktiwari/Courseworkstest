class Course
  include Mongoid::Document

  validates :course_title, presence => true

  has_and_belongs_to_many :users
  has_many :lectures
  embeds_many :assignments

  field :call_number, type: String
  field :course_title, type: String
  field :start_time1, type: String
  field :end_time1, type: String
  field :meets_on_1, type: String
  field :building_1, type: String
  field :room_1, type: String
  field :instructor_1_name, type: String
end
