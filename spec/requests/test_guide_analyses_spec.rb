require 'rails_helper'

RSpec.describe "TestGuideAnalyses", :type => :request do
  describe "GET /test_guide_analyses" do
    it "works! (now write some real specs)" do
      get test_guide_analyses_path
      expect(response.status).to be(200)
    end
  end
end
