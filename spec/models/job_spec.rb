require 'spec_helper'

describe Job do
	before :each do
		@valid_attributes = {
			job_title: 'Master Programmer',
			job_description: 'Lotso progamming is involved',
			experience_level: 'Master Level',
			job_type: 'Back-end',
			primary_languages: 'Ruby',
			secondary_languages: 'Html',
			job_link: 'www.job.com',
			company_name: 'Danon',
			company_address: 'New York, NY',
			company_website: 'www.danon.com',
			industry: 'Party industry',
			company_size: 100,
			latitude: 40.7143528,
			longitude: -74.0059731
		}
	end 

	describe "validations" do
	  context 'when all attributes are valid' do
	  	it 'is valid' do
	  		expect(Job.new(@valid_attributes)).to be_valid
	  	end
	  end

	  context 'when job title is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_title: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_title]).to include 'must be present'
	  	end
	  end

	  context 'when job description is blank' do
	  	it  'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_description: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_description]).to include 'must be present'
	  	end
	  end	

	  context 'when experience level is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(experience_level:''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:experience_level]).to include 'must be present'
	  	end
	  end

	  context 'when job type is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_type: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_type]).to include 'must be present'
	  	end
	  end

	  context 'when primary language(s) is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(primary_languages: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:primary_languages]).to include 'must be present'
	  	end
	  end

	  # context 'when secondary language(s) is blank' do
	  # 	it 'is not valid' do
	  # 		job = Job.new(@valid_attributes.merge(secondary_languages: ''))
	  # 		expect(job).not_to be_valid
	  # 		expect(job.errors[:secondary_languages]).to include 'must be present'
	  # 	end
	  # end

	  context 'when job link is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_link: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_link]).to include 'must be present'
	  	end
	  end

	  context 'when company name is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(company_name: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:company_name]).to include 'must be present'
	  	end
	  end

	  context 'when company address is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(company_address: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:company_address]).to include 'must be present'
	  	end
	  end

	  # context 'when company website is blank' do
	  # 	it 'is not valid' do
	  # 		job = Job.new(@valid_attributes.merge(company_website: ''))
	  # 		expect(job).not_to be_valid
	  # 		expect(job.errors[:company_website]).to include 'must be present'
	  # 	end
	  # end

	  # context 'when industry is blank' do
	  # 	it 'is not valid' do
		 #  	job = Job.new(@valid_attributes.merge(industry: ''))
		 #  	expect(job).not_to be_valid
		 #  	expect(job.errors[:industry]).to include 'must be present'
		 #  end
	  # end	

	  # context 'when company size is blank' do
	  # 	it 'is not valid' do
	  # 		job = Job.new(@valid_attributes.merge(company_size: ''))
	  # 		expect(job).not_to be_valid
	  # 		expect(job.errors[:company_size]).to include 'must be present'
	  # 	end
	  # end

		 context 'when latitude is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(latitude: ''))
				expect(job).not_to be_valid
				expect(job.errors[:latitude]).to include 'must be present'
			end
		end	

		context 'when longitude is blank' do
		 	it "is not valid" do
		 		job = Job.new(@valid_attributes.merge(longitude: ''))
		 		expect(job).not_to be_valid
		 		expect(job.errors[:longitude]).to include 'must be present'
		 	end
		 end 

		context 'when latitude contains letters' do
			it "is not valid" do
				job = Job.new(@valid_attributes.merge(latitude: 40.7143528))
				expect(job).to be_valid

				jobless = Job.new(@valid_attributes.merge(latitude: "number"))
				expect(jobless).to_not be_valid
				expect(jobless.errors[:latitude]).to include 'must be a number'
			end
		end

		context 'when longitude contains letters' do
			it "is not valid" do
				job = Job.new(@valid_attributes.merge(longitude: -74.0059731))
				expect(job).to be_valid

				jobless = Job.new(@valid_attributes.merge(longitude: "number"))
				expect(jobless).to_not be_valid
				expect(jobless.errors[:longitude]).to include 'must be a number'
			end
		end

		# context 'when company size contains letters' do
		# 	it "is not valid" do
		# 		job = Job.new(@valid_attributes.merge(company_size: 100))
		# 		expect(job).to be_valid

		# 		jobless = Job.new(@valid_attributes.merge(company_size: "one hundred"))
		# 		expect(jobless).to_not be_valid
		# 		expect(jobless.errors[:company_size]).to include 'must be a number'
		# 	end
		# end
  end

   describe 'scopes' do
  	describe ':front_end' do
  	  it 'return only the jobs marked as Front-End' do
  	  	Job.create(@valid_attributes.merge(job_type: 'Front-End'))
  	  	jobless = Job.create(@valid_attributes.merge(job_type: 'Back-end'))

  	  	expect(Job.front_end).not_to include jobless
  	  	expect(Job.front_end.count).to eql 1
  	  end
  	end

  	describe ':back_end' do
  	  it 'returns only the jobs marked as Back-End' do
  	  	Job.create(@valid_attributes.merge(job_type: 'Back-End'))
  	  	jobless = Job.create(@valid_attributes.merge(job_type: 'Front-end'))

  	  	expect(Job.back_end).not_to include jobless
  	  	expect(Job.back_end.count).to eql 1
  	  end
  	end

  	describe ':full_stack' do
  	  it 'returns only the jobs marked as Full-Stack' do
  	  	Job.create(@valid_attributes.merge(job_type: 'Full-Stack'))
  	  	jobless = Job.create(@valid_attributes.merge(job_type: 'Front-end'))

  	  	expect(Job.full_stack).not_to include jobless
  	  	expect(Job.full_stack.count).to eql 1
  	  end
  	end

  	describe ':junior' do
  	  it 'returns only the jobs marked as Junior Level' do
  	  	Job.create(@valid_attributes.merge(experience_level: 'Junior'))
  	  	jobless = Job.create(@valid_attributes.merge(experience_level: 'Senior'))

  	  	expect(Job.junior).not_to include jobless
  	  	expect(Job.junior.count).to eql 1
  	  end
  	end

  	describe ':senior' do
  	  it 'returns only the jobs marked as Senior Level' do
  	  	Job.create(@valid_attributes.merge(experience_level: 'Senior'))
  	  	jobless = Job.create(@valid_attributes.merge(experience_level: 'Junior'))

  	  	expect(Job.senior).not_to include jobless
  	  	expect(Job.senior.count).to eql 1
  	  end
  	end

  	describe ':internship' do
  	  it 'returns only the jobs marked as Internships' do
  	  	Job.create(@valid_attributes.merge(experience_level: 'Internship'))
  	  	jobless = Job.create(@valid_attributes.merge(experience_level: 'Junior'))

  	  	expect(Job.internship).not_to include jobless
  	  	expect(Job.internship.count).to eql 1
  	  end
  	end
  	
  end
end