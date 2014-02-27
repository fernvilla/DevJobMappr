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
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

end
