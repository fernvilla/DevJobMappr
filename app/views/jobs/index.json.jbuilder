json.array!(@jobs) do |job|
  json.extract! job, :job_title, :job_description, :experience_level, :job_type, :primary_languages, :secondary_languages, :job_link, :company_name, :company_address, :company_website, :industry, :company_size, :latitude, :longitude
  json.url job_url(job, format: :json)
end