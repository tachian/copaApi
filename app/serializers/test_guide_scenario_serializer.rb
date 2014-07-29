class TestGuideScenarioSerializer < ActiveModel::Serializer
  attributes :id, :name, :media
  has_one :test_guide_analysis
end
