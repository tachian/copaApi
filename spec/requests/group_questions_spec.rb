require 'rails_helper'

RSpec.describe "GroupQuestions", :type => :request do
  describe "GET /group_questions" do
    it "works! (now write some real specs)" do
      get group_questions_path
      expect(response.status).to be(200)
    end
  end
end
