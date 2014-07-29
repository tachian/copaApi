class TestSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration
  has_one :company
end
