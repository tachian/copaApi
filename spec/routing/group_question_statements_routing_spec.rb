require "rails_helper"

RSpec.describe GroupQuestionStatementsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_question_statements").to route_to("group_question_statements#index")
    end

    it "routes to #new" do
      expect(:get => "/group_question_statements/new").to route_to("group_question_statements#new")
    end

    it "routes to #show" do
      expect(:get => "/group_question_statements/1").to route_to("group_question_statements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_question_statements/1/edit").to route_to("group_question_statements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/group_question_statements").to route_to("group_question_statements#create")
    end

    it "routes to #update" do
      expect(:put => "/group_question_statements/1").to route_to("group_question_statements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_question_statements/1").to route_to("group_question_statements#destroy", :id => "1")
    end

  end
end
