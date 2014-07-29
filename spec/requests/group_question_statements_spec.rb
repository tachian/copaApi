require 'rails_helper'

RSpec.describe "GroupQuestionStatements", :type => :request do
  describe "GET /group_question_statements" do
    it "works! (now write some real specs)" do
      get group_question_statements_path
      expect(response.status).to be(200)
    end
  end
end
