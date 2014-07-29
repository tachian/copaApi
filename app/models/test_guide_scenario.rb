class TestGuideScenario < ActiveRecord::Base
  belongs_to :test_guide_analysis

  has_one :test_guide_scenario_ap
  has_one :test_guide_scenario_sa
end
