class CreateGroupQuestionAlternatives < ActiveRecord::Migration
  def change
    create_table :group_question_alternatives do |t|
      t.string :name
      t.boolean :correct
      t.references :group_question_statement, index: true

      t.timestamps
    end
  end
end
