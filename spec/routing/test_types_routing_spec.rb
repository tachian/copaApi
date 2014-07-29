require "rails_helper"

RSpec.describe TestTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_types").to route_to("test_types#index")
    end

    it "routes to #new" do
      expect(:get => "/test_types/new").to route_to("test_types#new")
    end

    it "routes to #show" do
      expect(:get => "/test_types/1").to route_to("test_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_types/1/edit").to route_to("test_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_types").to route_to("test_types#create")
    end

    it "routes to #update" do
      expect(:put => "/test_types/1").to route_to("test_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_types/1").to route_to("test_types#destroy", :id => "1")
    end

  end
end
