require "rails_helper"

RSpec.describe SimpleQuestionAlternativesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/simple_question_alternatives").to route_to("simple_question_alternatives#index")
    end

    it "routes to #new" do
      expect(:get => "/simple_question_alternatives/new").to route_to("simple_question_alternatives#new")
    end

    it "routes to #show" do
      expect(:get => "/simple_question_alternatives/1").to route_to("simple_question_alternatives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/simple_question_alternatives/1/edit").to route_to("simple_question_alternatives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/simple_question_alternatives").to route_to("simple_question_alternatives#create")
    end

    it "routes to #update" do
      expect(:put => "/simple_question_alternatives/1").to route_to("simple_question_alternatives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/simple_question_alternatives/1").to route_to("simple_question_alternatives#destroy", :id => "1")
    end

  end
end
