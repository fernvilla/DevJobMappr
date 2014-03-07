class Job < ActiveRecord::Base
	validates :job_title, :job_description, :experience_level, :job_type, :primary_languages, :job_link, :company_name, :company_address, :latitude, :longitude, presence: {message: "must be present"}

	validates :latitude, :longitude, numericality: {message: 'must be a number'}

	geocoded_by :company_address
  before_validation :geocode 

  belongs_to :user

  def self.import_jobs
    HTTParty.get "http://api.indeed.com/ads/apisearch?publisher=9335086191163405&q=web+developer&l=santa+monica%2C+ca&v=2&format=json&latlong=1&st=employer&radius=25&limit=500"
  end

end
