require 'spec_helper'

describe "PageTitles" do

	describe "Home" do
		it "should have the correct title" do
			get root_path
			response.should have_selector( :title, :content => "Home" )
		end
	end

	describe "Tour" do
		it "should have the correct title" do
			get tour_path
			response.should have_selector( :title, :content => "Tour" )
		end
	end

	describe "Pricing" do
		it "should have the correct title" do
			get pricing_path
			response.should have_selector( :title, :content => "Pricing" )
		end
	end

	describe "Contact" do
		it "should have the correct title" do
			get contact_path
			response.should have_selector( :title, :content => "Contact" )
		end
	end

	describe "TaC" do
		it "should have the correct title" do
			get tac_path
			response.should have_selector( :title, :content => "Terms and Conditions" )
		end
	end
end
