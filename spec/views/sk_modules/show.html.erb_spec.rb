require 'spec_helper'

describe "sk_modules/show.html.erb" do
  before(:each) do
    @sk_module = assign(:sk_module, stub_model(SkModule,
      :name => "Name",
      :subdomain => "Subdomain",
      :enabled => false,
      :machine_name => "Machine Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subdomain/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Name/)
  end
end
