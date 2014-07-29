class GroupQuestionAlternative < ActiveRecord::Base
  belongs_to :group_question_statement

  validates :name, presence: true
  validates :group_question_statement, presence: true
end
