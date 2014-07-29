class SimpleQuestionAlternative < ActiveRecord::Base
  belongs_to :simple_question

  validates :name, presence: true
  validates :simple_question, presence: true
end
