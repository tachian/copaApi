class GroupQuestion < ActiveRecord::Base
	has_many :group_question_statements
	has_many :test_guide_basics

	validates :name, presence: true
end
