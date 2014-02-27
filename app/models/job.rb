class Job < ActiveRecord::Base
	validates :job_title, :job_description, :experience_level, presence: {message: "must be present"}

end
