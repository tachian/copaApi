class Team < ActiveRecord::Base
	has_many :members

	validates :name, presence: true
	validates :name, length: { minimum: 5 }
  validates :name, length: { maximum: 50 }
end