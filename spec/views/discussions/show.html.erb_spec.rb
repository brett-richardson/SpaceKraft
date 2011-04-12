require 'spec_helper'

describe "discussions/show.html.erb" do
  before(:each) do
    @discussion = assign(:discussion, stub_model(Discussion,
      :title => "Title",
      :content => "MyText",
      :group => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
