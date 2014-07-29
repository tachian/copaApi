require 'rails_helper'

RSpec.describe "SimpleQuestions", :type => :request do
  describe "GET /simple_questions" do
    it "works! (now write some real specs)" do
      get simple_questions_path
      expect(response.status).to be(200)
    end
  end
end
