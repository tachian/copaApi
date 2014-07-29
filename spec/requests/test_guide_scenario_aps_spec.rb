require 'rails_helper'

RSpec.describe "TestGuideScenarioAps", :type => :request do
  describe "GET /test_guide_scenario_aps" do
    it "works! (now write some real specs)" do
      get test_guide_scenario_aps_path
      expect(response.status).to be(200)
    end
  end
end
