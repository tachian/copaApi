class TestGuideBasic < ActiveRecord::Base
  belongs_to :test
  belongs_to :test_type
  belongs_to :simple_question
  belongs_to :group_question

  validates :test, presence: true
  validates :test_type, presence: true
  
end
