class Job < ActiveRecord::Base
	validates :job_title, :job_description, :experience_level, :job_type, :primary_languages, :job_link, :company_name, :company_address, :latitude, :longitude, presence: {message: "must be present"}

	# validates :latitude, :longitude, numericality: {message: 'must be a number'}

	geocoded_by :company_address
  before_validation :geocode 

  belongs_to :user

  scope :front_end, -> { where(job_type: 'Front-End')}
  scope :back_end, -> { where(job_type: 'Back-End')}
  scope :full_stack, -> { where(job_type: 'Full-Stack')}
  scope :junior, -> { where(experience_level: 'Junior')}
  scope :senior, -> { where(experience_level: 'Senior')}
  scope :internship, -> { where(experience_level: 'Internship')}

end