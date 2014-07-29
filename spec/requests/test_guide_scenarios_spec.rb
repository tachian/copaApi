require 'rails_helper'

RSpec.describe "TestGuideScenarios", :type => :request do
  describe "GET /test_guide_scenarios" do
    it "works! (now write some real specs)" do
      get test_guide_scenarios_path
      expect(response.status).to be(200)
    end
  end
end
