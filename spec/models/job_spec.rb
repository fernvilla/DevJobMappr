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

	  context 'when job title is missing' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_title: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_title]).to include 'must be present'
	  	end
	  end

	  context 'when job_description is blank' do
	  	it  'is not valid' do
	  		job = Job.new(@valid_attributes.merge(job_description: ''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:job_description]).to include 'must be present'
	  	end
	  end	

	  context 'when experience_level is blank' do
	  	it 'is not valid' do
	  		job = Job.new(@valid_attributes.merge(experience_level:''))
	  		expect(job).not_to be_valid
	  		expect(job.errors[:experience_level]).to include 'must be present'
	  	end
	  end
	end
	  
end
