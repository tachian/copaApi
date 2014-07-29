require "rails_helper"

RSpec.describe TestGuideAnalysesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_guide_analyses").to route_to("test_guide_analyses#index")
    end

    it "routes to #new" do
      expect(:get => "/test_guide_analyses/new").to route_to("test_guide_analyses#new")
    end

    it "routes to #show" do
      expect(:get => "/test_guide_analyses/1").to route_to("test_guide_analyses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_guide_analyses/1/edit").to route_to("test_guide_analyses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_guide_analyses").to route_to("test_guide_analyses#create")
    end

    it "routes to #update" do
      expect(:put => "/test_guide_analyses/1").to route_to("test_guide_analyses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_guide_analyses/1").to route_to("test_guide_analyses#destroy", :id => "1")
    end

  end
end
