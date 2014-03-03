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
			company_address: '123 Dan st.',
			company_website: 'www.danon.com',
			industry: 'Party industry',
			company_size: 100,
			latitude: 123123123213,
			longitude: 1231231245
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
				job = Job.new(@valid_attributes.merge(latitude: 3))
				expect(job).to be_valid

				jobless = Job.new(@valid_attributes.merge(latitude: "number"))
				expect(jobless).to_not be_valid
				expect(jobless.errors[:latitude]).to include 'must be a number'
			end
		end

		context 'when longitude contains letters' do
			it "is not valid" do
				job = Job.new(@valid_attributes.merge(longitude: 3))
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
end