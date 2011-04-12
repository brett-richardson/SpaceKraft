require 'spec_helper'

describe DashboardController do

	describe "GET 'index'" do
		it "should not be successful when not logged in" do
			get 'index'
			response.should_not be_success
		end

		it "should be successful when logged in" do
			sign_in( Factory.create( :user ) )
			get 'index'
			response.should be_success
		end
	end

end
