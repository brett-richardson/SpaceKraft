require 'spec_helper'

describe "sk_modules/edit.html.erb" do
  before(:each) do
    @sk_module = assign(:sk_module, stub_model(SkModule,
      :name => "MyString",
      :subdomain => "MyString",
      :enabled => false,
      :machine_name => "MyString"
    ))
  end

  it "renders the edit sk_module form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sk_modules_path(@sk_module), :method => "post" do
      assert_select "input#sk_module_name", :name => "sk_module[name]"
      assert_select "input#sk_module_subdomain", :name => "sk_module[subdomain]"
      assert_select "input#sk_module_enabled", :name => "sk_module[enabled]"
      assert_select "input#sk_module_machine_name", :name => "sk_module[machine_name]"
    end
  end
end
