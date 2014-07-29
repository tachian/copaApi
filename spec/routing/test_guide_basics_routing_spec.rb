require "rails_helper"

RSpec.describe TestGuideBasicsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_guide_basics").to route_to("test_guide_basics#index")
    end

    it "routes to #new" do
      expect(:get => "/test_guide_basics/new").to route_to("test_guide_basics#new")
    end

    it "routes to #show" do
      expect(:get => "/test_guide_basics/1").to route_to("test_guide_basics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_guide_basics/1/edit").to route_to("test_guide_basics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_guide_basics").to route_to("test_guide_basics#create")
    end

    it "routes to #update" do
      expect(:put => "/test_guide_basics/1").to route_to("test_guide_basics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_guide_basics/1").to route_to("test_guide_basics#destroy", :id => "1")
    end

  end
end
