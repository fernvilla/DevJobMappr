require 'spec_helper'

describe JobsController do

  describe "GET 'index'" do
    it "returns http success" do
      Job.stub(:all).and_return('an array of jobs')
      get 'index'
      response.should be_success
      expect(assigns(:jobs)).to eq 'an array of jobs'
    end
  end

describe "POST 'create'" do
  before :all do
    @post_params = {
      job: {
        job_title: 'doctor'
      }
    }
end 

  context 'when job is valid' do 
    it 'saves the job with the params given, sets a flash notice and redirects to the "index"' do
      Job.any_instance.stub(:valid?).and_return(true)

      post 'create', { job: { job_title: 'lawyer' } }

      expect(flash[:notice]).to eq 'Yay! your job is saved.'
      expect(response).to redirect_to jobs_path
      expect(assigns(:job).job_title).to eq 'lawyer'
      expect(assigns(:job)). to be_persisted
    end
  end

  context 'when athlete is not valid' do
    it 'does not save the athlete' do
      Job.any_instance.stub(:valid?).and_return(false)

      post 'create', {job: { job_title: 'lawyer' } } 

      expect(flash[:error]).to eq 'Did not save'
      expect(response).to render_template('new')
    end
  end
end
  describe "GET 'new'" do
    it "returns http success" do
      Job.should_receive(:new).and_return("a new job")
      get 'new'
      expect(assigns(:job)).to eq "a new job"
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      Job.should_receive(:find).with("1").and_return("espn")
      get 'show', {id: 1}
      expect(assigns(:job)).to eq "espn"
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "allows a job to get edited" do
       Job.should_receive(:find).with("3").and_return("teacher")
       get 'edit', {id: 3}
       expect(assigns(:job)).to eq "teacher"
       response.should be_success
    end
  end

end
