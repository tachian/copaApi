require "rails_helper"

RSpec.describe GroupQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_questions").to route_to("group_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/group_questions/new").to route_to("group_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/group_questions/1").to route_to("group_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_questions/1/edit").to route_to("group_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/group_questions").to route_to("group_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/group_questions/1").to route_to("group_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_questions/1").to route_to("group_questions#destroy", :id => "1")
    end

  end
end
