require "spec_helper"

describe SkModulesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sk_modules" }.should route_to(:controller => "sk_modules", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sk_modules/new" }.should route_to(:controller => "sk_modules", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sk_modules/1" }.should route_to(:controller => "sk_modules", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sk_modules/1/edit" }.should route_to(:controller => "sk_modules", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sk_modules" }.should route_to(:controller => "sk_modules", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sk_modules/1" }.should route_to(:controller => "sk_modules", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sk_modules/1" }.should route_to(:controller => "sk_modules", :action => "destroy", :id => "1")
    end

  end
end
