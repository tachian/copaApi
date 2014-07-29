require 'rails_helper'

RSpec.describe "TestGuideBasics", :type => :request do
  describe "GET /test_guide_basics" do
    it "works! (now write some real specs)" do
      get test_guide_basics_path
      expect(response.status).to be(200)
    end
  end
end
