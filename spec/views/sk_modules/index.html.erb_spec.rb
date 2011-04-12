require 'spec_helper'

describe "sk_modules/index.html.erb" do
  before(:each) do
    assign(:sk_modules, [
      stub_model(SkModule,
        :name => "Name",
        :subdomain => "Subdomain",
        :enabled => false,
        :machine_name => "Machine Name"
      ),
      stub_model(SkModule,
        :name => "Name",
        :subdomain => "Subdomain",
        :enabled => false,
        :machine_name => "Machine Name"
      )
    ])
  end

  it "renders a list of sk_modules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subdomain".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Name".to_s, :count => 2
  end
end
