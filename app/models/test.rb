class Test < ActiveRecord::Base
  belongs_to :company
  has_many :test_guide_basics
  has_many :test_guide_analyses

  validates :company, presence: true
  validates :name, presence: true
end
