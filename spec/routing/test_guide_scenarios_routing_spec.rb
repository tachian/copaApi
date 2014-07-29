require "rails_helper"

RSpec.describe TestGuideScenariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_guide_scenarios").to route_to("test_guide_scenarios#index")
    end

    it "routes to #new" do
      expect(:get => "/test_guide_scenarios/new").to route_to("test_guide_scenarios#new")
    end

    it "routes to #show" do
      expect(:get => "/test_guide_scenarios/1").to route_to("test_guide_scenarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_guide_scenarios/1/edit").to route_to("test_guide_scenarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_guide_scenarios").to route_to("test_guide_scenarios#create")
    end

    it "routes to #update" do
      expect(:put => "/test_guide_scenarios/1").to route_to("test_guide_scenarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_guide_scenarios/1").to route_to("test_guide_scenarios#destroy", :id => "1")
    end

  end
end
