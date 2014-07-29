class GroupQuestionAlternativeSerializer < ActiveModel::Serializer
  attributes :id, :name, :correct
  has_one :group_question_statement
end
