require "rails_helper"

RSpec.describe TestGuideScenarioSasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_guide_scenario_sas").to route_to("test_guide_scenario_sas#index")
    end

    it "routes to #new" do
      expect(:get => "/test_guide_scenario_sas/new").to route_to("test_guide_scenario_sas#new")
    end

    it "routes to #show" do
      expect(:get => "/test_guide_scenario_sas/1").to route_to("test_guide_scenario_sas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_guide_scenario_sas/1/edit").to route_to("test_guide_scenario_sas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_guide_scenario_sas").to route_to("test_guide_scenario_sas#create")
    end

    it "routes to #update" do
      expect(:put => "/test_guide_scenario_sas/1").to route_to("test_guide_scenario_sas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_guide_scenario_sas/1").to route_to("test_guide_scenario_sas#destroy", :id => "1")
    end

  end
end
