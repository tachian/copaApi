class TestGuideScenarioSaSerializer < ActiveModel::Serializer
  attributes :id, :statement
  has_one :test_guide_scenario
  has_one :simple_question
  has_one :group_question
end
