require "rails_helper"

RSpec.describe TestGuideScenarioApsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_guide_scenario_aps").to route_to("test_guide_scenario_aps#index")
    end

    it "routes to #new" do
      expect(:get => "/test_guide_scenario_aps/new").to route_to("test_guide_scenario_aps#new")
    end

    it "routes to #show" do
      expect(:get => "/test_guide_scenario_aps/1").to route_to("test_guide_scenario_aps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_guide_scenario_aps/1/edit").to route_to("test_guide_scenario_aps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_guide_scenario_aps").to route_to("test_guide_scenario_aps#create")
    end

    it "routes to #update" do
      expect(:put => "/test_guide_scenario_aps/1").to route_to("test_guide_scenario_aps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_guide_scenario_aps/1").to route_to("test_guide_scenario_aps#destroy", :id => "1")
    end

  end
end
