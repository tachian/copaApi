class Member < ActiveRecord::Base
  belongs_to :team

  validates :name, presence: true
  validates :team, presence: true
  validates :name, length: { minimum: 5 }
  validates :name, length: { maximum: 50 }
end