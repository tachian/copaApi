class CreateTestGuideScenarios < ActiveRecord::Migration
  def change
    create_table :test_guide_scenarios do |t|
      t.references :test_guide_analysis, index: true
      t.string :name
      t.string :media

      t.timestamps
    end
  end
end
