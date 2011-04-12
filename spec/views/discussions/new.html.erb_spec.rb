require 'spec_helper'

describe "discussions/new.html.erb" do
  before(:each) do
    assign(:discussion, stub_model(Discussion,
      :title => "MyString",
      :content => "MyText",
      :group => ""
    ).as_new_record)
  end

  it "renders new discussion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => discussions_path, :method => "post" do
      assert_select "input#discussion_title", :name => "discussion[title]"
      assert_select "textarea#discussion_content", :name => "discussion[content]"
      assert_select "input#discussion_group", :name => "discussion[group]"
    end
  end
end
