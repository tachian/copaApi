class CreateTestGuideAnalyses < ActiveRecord::Migration
  def change
    create_table :test_guide_analyses do |t|
      t.references :test, index: true
      t.string :name
      t.string :media
      t.text :statement
      t.integer :order

      t.timestamps
    end
  end
end
