require 'spec_helper'

describe PagesController do
	render_views

	# Test existance of pages
	[ 'home', 'tour', 'pricing', 'contact', 'legal', 'tac' ].each do | page |
		describe "GET " + page do
			it "should be successful" do
				get page
				response.should be_success
			end
		end
	end

end
