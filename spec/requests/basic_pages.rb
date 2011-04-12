require 'spec_helper'

describe "BasicPages" do
	[	'/', 'tour', 'pricing',
		'contact', 'legal', 'tac'
	].each do | item |
		describe "page: " + item do
			before( :each ){ get item }

			it "should be success" do
				response.should be_success
			end

			it "should have a logo anchor that links to the homepage" do
				response.should have_selector(
					:a, :id => "logo", :href => root_path
				)
			end

			it "should have a main nav" do
				response.should have_selector(
					:ul, :id => "mainnav"
				)
			end
		end
	end
end
