class TestGuideBasicSerializer < ActiveModel::Serializer
  attributes :id, :order, :name, :message
  has_one :test
  has_one :test_type
  has_one :simple_question
  has_one :group_question
end
