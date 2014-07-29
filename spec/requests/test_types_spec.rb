require 'rails_helper'

RSpec.describe "TestTypes", :type => :request do
  describe "GET /test_types" do
    it "works! (now write some real specs)" do
      get test_types_path
      expect(response.status).to be(200)
    end
  end
end
