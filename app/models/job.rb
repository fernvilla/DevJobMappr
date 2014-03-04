class Job < ActiveRecord::Base
	validates :job_title, :job_description, :experience_level, :job_type, :primary_languages, :job_link, :company_name, :company_address, :latitude, :longitude, presence: {message: "must be present"}

	validates :latitude, :longitude, numericality: {message: "must be a number"}

	geocoded_by :company_address
  before_validation :geocode 

  belongs_to :user
end
