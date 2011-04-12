require 'spec_helper'

describe "discussions/edit.html.erb" do
  before(:each) do
    @discussion = assign(:discussion, stub_model(Discussion,
      :title => "MyString",
      :content => "MyText",
      :group => ""
    ))
  end

  it "renders the edit discussion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => discussions_path(@discussion), :method => "post" do
      assert_select "input#discussion_title", :name => "discussion[title]"
      assert_select "textarea#discussion_content", :name => "discussion[content]"
      assert_select "input#discussion_group", :name => "discussion[group]"
    end
  end
end
