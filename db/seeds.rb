# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.destroy_all

jobs = Job.create([{job_title: 'Digital Media Designer', company_name: 'Warner Bros. Entertainment Group', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Ruby', job_type: 'Front-End', company_address: '14000 Warner Blvd, Burbank, CA 91522', job_link: "http://www.indeed.com/viewjob?jk=840ddd9153ec27f8&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"}, 

  {job_title: 'Junior Back End Web Developer', company_name: 'Dahlia Wolf', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Back-End', company_address: 'Los Angeles CA', job_link: "http://www.indeed.com/viewjob?jk=4a3a173fb9bcc477&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

  {job_title: 'Software Developer', company_name: 'Hulu', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404', job_link: "http://www.indeed.com/viewjob?jk=f5fb650e70e658e1&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

  {job_title: 'Web Designer/Developer', company_name: 'Uber', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'SQL', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404', job_link: "http://www.indeed.com/viewjob?jk=fbb8836e7f06625a&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

  {job_title: 'Software Engineer', company_name: 'Google', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Angular JS', job_type: 'Full-Stack', company_address: '604 Arizona Ave, Santa Monica, CA 90401', job_link: "http://www.indeed.com/viewjob?jk=532307b227de09d2&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Front End Web Developer', company_name: 'NBC Universal', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '3000 W Alameda Ave Burbank, CA 91523', job_link: "http://www.indeed.com/viewjob?jk=b5d42d621c8a12df&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Product Manager - Mobile', company_name: 'Hulu', experience_level: 'Senior', job_description: 'Product Manager', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '2500 Broadway, Santa Monica, CA 90404', job_link: "http://www.indeed.com/viewjob?jk=0cf8c2faef95e0cb&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Software Engineer, Mobile Applications (Android / iOS)', company_name: 'Google', experience_level: 'Senior', job_description: 'Product Manager', primary_languages: 'HTML', job_type: 'Full-Stack', company_address: '604 Arizona Ave, Santa Monica, CA 90401', job_link: "http://www.indeed.com/viewjob?jk=57d987e79edcc894&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Programmer', company_name: 'LFP Internet Group LLC', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Python', job_type: 'Full-Stack', company_address: 'Beverly Hills, CA', job_link: "http://www.indeed.com/viewjob?jk=37a697d93149dd3b&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Web Application Developer', company_name: 'NFL', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'php', job_type: 'Full-Stack', company_address: 'Culver City, CA', job_link: "http://www.indeed.com/viewjob?jk=0ff4f36db501c74f&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'Sr. Front End Software Engineer', company_name: 'Programmer', experience_level: 'Senior', job_description: 'Developer', primary_languages: 'Firebug', job_type: 'Full-Stack', company_address: 'Santa Monica, CA', job_link: "http://www.indeed.com/viewjob?jk=ec1b8fffd16969e8&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},

   {job_title: 'UI Developer', company_name: 'IT Tech', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'Firebug', job_type: 'Front-End', company_address: '2850 Ocean Park, Santa Monica, CA 90405', job_link: "http://www.indeed.com/viewjob?jk=353e94e889240ada&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"},


   {job_title: 'Web Developer', company_name: 'MV Labs', experience_level: 'Junior', job_description: 'Developer', primary_languages: 'HTML', job_type: 'Back-End', company_address: 'Santa Monica, CA 90405', job_link: "http://www.indeed.com/viewjob?jk=d61b327754f6d72c&qd=7qFqBxQMYKBQ0-Rif-TGWFMyD6hKI-GopwBdQPxvop_PLUo1QS8NTLq_J2t7GheABPPUk3V4Z9wiluWgMiCPmoTg27V9mPELotZ6sMq30MfvaYeZxhdRoIjHMJDhtQF8&indpubnum=9335086191163405&atk=18ieq6fve1d723ra"}

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