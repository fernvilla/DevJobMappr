require 'spec_helper'

describe JobsController do
  # Create a current_user with Factory Girl first or all tests will fail
  before :each do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    current_user = FactoryGirl.create(:user)
    sign_in current_user
  end

#testing for current_user
  describe "GET 'index'" do
    #before each test, that i want the controller to return current user for that test. and it should return Factory Girl.
      #to test current_user you have to use controller.stub to test return value
    context'when somebody is logged in' do
      it "returns http success" do
        get "index"
        expect(response).to be_success
        expect(response.status).to eq 200
      end
    end 
    context 'when someone is not logged in' do
      it 'redirect to the homepage and sets a flash alert' do 
        #the get find a new action and lighting it up.
        get "new"
        expect(response.status).to eq 200
      end 
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

      expect(flash[:notice]).to eq "Your Job Has Been Posted Successfully"
      expect(response).to redirect_to root_path
      expect(assigns(:job).job_title).to eq 'lawyer'
      expect(assigns(:job)).to be_persisted
    end
  end

  context 'when job is not valid' do
    it 'does not save the job' do
      Job.any_instance.stub(:valid?).and_return(false)

      post 'create', {job: { job_title: 'lawyer' } } 

      expect(flash[:error]).to eq 'Error In Your Submission'
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
