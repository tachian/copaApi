class CreateGroupQuestionStatements < ActiveRecord::Migration
  def change
    create_table :group_question_statements do |t|
      t.string :name
      t.references :group_question, index: true

      t.timestamps
    end
  end
end
