# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Job.destroy_all

jobs = Job.create([{
  job_title: 'Digital Media Designer', company_name: 'Warner Bros. Entertainment Group', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Ruby', secondary_languages: 'CSS', job_type: 'Front-End', latitude: 34.17857, longitude: -118.30769}, 
 {job_title: 'Junior Back End Web Developer', company_name: 'Dahali Wolf', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'HTML', secondary_languages: 'CSS', job_type: 'Back-End', latitude: 34.052197, longitude: -118.24176}])

jobs.each do |j|
address_feed = j.latitude + j.longitude 
company_address = Geocoder.coordinates(address_feed)
j.save
end




#  t.string   "job_title"
#     t.text     "job_description"
#     t.string   "experience_level"
#     t.string   "job_type"
#     t.string   "primary_languages"
#     t.string   "secondary_languages"
#     t.string   "job_link"
#     t.string   "company_name"
#     t.string   "company_address"
#     t.string   "company_website"
#     t.string   "industry"
#     t.integer  "company_size"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#     t.float    "latitude"
#     t.float    "longitude"
#     t.integer  "user_id"
#     t.string   "job_key"