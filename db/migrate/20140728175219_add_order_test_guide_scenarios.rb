class AddOrderTestGuideScenarios < ActiveRecord::Migration
  def change
  	add_column :test_guide_scenarios, :order, :integer
  end
end
