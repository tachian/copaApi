class SimpleQuestionAlternativeSerializer < ActiveModel::Serializer
  attributes :id, :name, :media, :correct
  has_one :simple_question
end
