require 'spec_helper'

describe "discussions/index.html.erb" do
  before(:each) do
    assign(:discussions, [
      stub_model(Discussion,
        :title => "Title",
        :content => "MyText",
        :group => ""
      ),
      stub_model(Discussion,
        :title => "Title",
        :content => "MyText",
        :group => ""
      )
    ])
  end

  it "renders a list of discussions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
