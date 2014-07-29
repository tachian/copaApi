class TestGuideAnalysisSerializer < ActiveModel::Serializer
  attributes :id, :name, :media, :statement, :order
  has_one :test
end
