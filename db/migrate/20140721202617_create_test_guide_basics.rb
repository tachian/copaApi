class CreateTestGuideBasics < ActiveRecord::Migration
  def change
    create_table :test_guide_basics do |t|
      t.references :test, index: true
      t.references :test_type, index: true
      t.integer :order
      t.string :name
      t.text :message
      t.references :simple_question, index: true
      t.references :group_question, index: true

      t.timestamps
    end
  end
end
