class SimpleQuestion < ActiveRecord::Base
	has_many :simple_question_alternatives
	has_many :test_quide_basics

	validates :name, presence: true
end
