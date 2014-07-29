require "rails_helper"

RSpec.describe SimpleQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/simple_questions").to route_to("simple_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/simple_questions/new").to route_to("simple_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/simple_questions/1").to route_to("simple_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/simple_questions/1/edit").to route_to("simple_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/simple_questions").to route_to("simple_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/simple_questions/1").to route_to("simple_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/simple_questions/1").to route_to("simple_questions#destroy", :id => "1")
    end

  end
end
