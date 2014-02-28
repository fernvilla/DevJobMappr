require 'spec_helper'

describe MapsController do

  describe "GET 'index'" do
    it "returns http success" do
      Map.stub(:all).and_return('a map')
      get 'index'
      response.should be_success
      expect(assigns(:maps)).to eq "a map"
    end
  end

end
