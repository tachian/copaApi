class GroupQuestionStatementSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :group_question
end
