class TestGuideScenarioSa < ActiveRecord::Base
  belongs_to :test_guide_scenario
  belongs_to :simple_question
  belongs_to :group_question
end
