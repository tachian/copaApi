require 'rails_helper'

RSpec.describe "GroupQuestionAlternatives", :type => :request do
  describe "GET /group_question_alternatives" do
    it "works! (now write some real specs)" do
      get group_question_alternatives_path
      expect(response.status).to be(200)
    end
  end
end
