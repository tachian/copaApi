class GroupQuestionStatement < ActiveRecord::Base
  belongs_to :group_question
  has_many :group_question_alternatives

  validates :name, presence: true
  validates :group_question, presence: true
  
end
