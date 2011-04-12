require 'spec_helper'

describe "sk_modules/new.html.erb" do
  before(:each) do
    assign(:sk_module, stub_model(SkModule,
      :name => "MyString",
      :subdomain => "MyString",
      :enabled => false,
      :machine_name => "MyString"
    ).as_new_record)
  end

  it "renders new sk_module form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sk_modules_path, :method => "post" do
      assert_select "input#sk_module_name", :name => "sk_module[name]"
      assert_select "input#sk_module_subdomain", :name => "sk_module[subdomain]"
      assert_select "input#sk_module_enabled", :name => "sk_module[enabled]"
      assert_select "input#sk_module_machine_name", :name => "sk_module[machine_name]"
    end
  end
end
