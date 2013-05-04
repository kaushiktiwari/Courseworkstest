class User
  include Mongoid::Document
  validates :email, presence => true

  after_initialize :default_values

  

  
  has_and_belongs_to_many :courses
  embeds_many :uploads

  field :first_name,:type=>String
  field :role,:type=>String
  field :email,:type=>String
  field :last_name,:type=>String
end
