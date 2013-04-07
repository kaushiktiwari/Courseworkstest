class user
	include Mongoid::Document

	has_many :courses
	embedded_many :assignments
	embedded_many :uploads


	field :first_name, :type =>String
	field :last_name,   :type =>String    
end

class course
	include Mongoid::Document
	has_many :users
	has_many :lectures
	embedded_many :assignments

	field :Coursename, :type =>String
	field :Instructor, :type =>String

end

class lecture
	include Mongoid:Document
	has _many :users
	has_one   :course

	field :Time, :type =>String
	field :Daysofweek, =>String
	field :Roomno, =>String
end

class assignment
	include Mongoid:Document
	embedded_in :user
	embedded_in :course

	field:Deadline, :type =>date
	field:Grade,    :type =>String
end

class upload
	embedded_in :user

	field:Uploaddate, :type =>date
end


