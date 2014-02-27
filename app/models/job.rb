class Job < ActiveRecord::Base
	validates :job_title, :job_description, :experience_level, :job_type, :primary_languages, :secondary_languages, :job_link, :company_name, :company_address, :company_website, :industry, :company_size, :latitude, :longitude, presence: {message: "must be present"}

end
