require 'rails_helper'

RSpec.describe "SimpleQuestionAlternatives", :type => :request do
  describe "GET /simple_question_alternatives" do
    it "works! (now write some real specs)" do
      get simple_question_alternatives_path
      expect(response.status).to be(200)
    end
  end
end
