class Upload
  include Mongoid::Document

  embedded_in :user

  field :upload_date, type: String
  field :Date, type: String
end
