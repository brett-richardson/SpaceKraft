require 'spec_helper'

describe User do
	subject{ Factory.build( :user ) }

	describe "factory" do
		it "should be valid" do
			should be_valid
		end
	end

	describe "properties" do
		describe "name" do
			it "should allow a valid name" do
				subject.name = "Brett Richardson"
				should be_valid
			end
			it "should not be allowed to be empty" do
				subject.name = ""
				should_not be_valid
			end
		end

		describe "email" do
			it "should allow valid email addresses" do
				subject.email = "brett@gmail.com"
				should be_valid
			end
			it "should not allow invalid email addresses" do
				subject.email = "brett@gmail"
				should_not be_valid
			end
		end

		describe "password" do
			it "should only accept passwords longer than 3 chars" do
				subject.password = "pas"
				should_not be_valid
			end
		end
	end
end
