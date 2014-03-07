# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.destroy_all

jobs = Job.create([{job_title: 'Digital Media Designer', company_name: 'Warner Bros. Entertainment Group', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Ruby', job_type: 'Front-End', company_address: '14000 Warner Blvd, Burbank, CA 91522'}, 

  {job_title: 'Junior Back End Web Developer', company_name: 'Dahlia Wolf', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Back-End', company_address: 'Los Angeles CA'},

  {job_title: 'Software Developer', company_name: 'Hulu', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404'},

  {job_title: 'Web Designer/Developer', company_name: 'Uber', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'SQL', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404'},

  {job_title: 'Software Engineer', company_name: 'Google', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Angular JS', job_type: 'Full-Stack', company_address: '604 Arizona Ave, Santa Monica, CA 90401'},

   {job_title: 'Front End Web Developer', company_name: 'NBC Universal', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '3000 W Alameda Ave Burbank, CA 91523'},

   {job_title: 'Product Manager - Mobile', company_name: 'Hulu', experience_level: 'Senior', job_description: 'Product Manager', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404'},

   {job_title: 'Software Engineer, Mobile Applications (Android / iOS)', company_name: 'Google', experience_level: 'Senior', job_description: 'Product Manager', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '604 Arizona Ave, Santa Monica, CA 90401'},

   {job_title: 'Programmer', company_name: 'Programmer', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Python', job_type: 'Full-Stack', company_address: 'Beverly Hills, CA'},

   {job_title: 'Web Application Developer', company_name: 'Programmer', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'php', job_type: 'Full-Stack', company_address: 'Culver City, CA'},

   {job_title: 'Sr. Front End Software Engineer', company_name: 'Programmer', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Firebug', job_type: 'Full-Stack', company_address: 'Santa Monica, CA'},

   {job_title: 'UI Developer', company_name: 'Programmer', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'Firebug', job_type: 'Front-End', company_address: '2850 Ocean Park, Santa Monica, CA 90405'},


   {job_title: 'Web Developer', company_name: 'MV Labs', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Back-End', company_address: 'Santa Monica, CA 90405'}

  ])







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