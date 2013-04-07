class User
	include Mongoid::Document

	has_many :courses
	embedded_many :assignments
	embedded_many :uploads

	field :first_name,:type=>String
	field :last_name,:type=>String
end
