class TestGuideAnalysis < ActiveRecord::Base
  belongs_to :test
  has_many :test_guide_scenarios

  validates :test, presence: true
end
