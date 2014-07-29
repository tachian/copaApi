class TestType < ActiveRecord::Base
	has_many :tests

	validates :name, presence: true
end
