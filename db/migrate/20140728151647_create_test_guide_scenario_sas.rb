class CreateTestGuideScenarioSas < ActiveRecord::Migration
  def change
    create_table :test_guide_scenario_sas do |t|
      t.references :test_guide_scenario, index: true
      t.text :statement
      t.references :simple_question, index: true
      t.references :group_question, index: true

      t.timestamps
    end
  end
end
