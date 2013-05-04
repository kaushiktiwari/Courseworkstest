class Upload
  include Mongoid::Document

  embedded_in :user
  has_attached_file :document

  field :upload_date, type: String
  field :Date, type: String
end
