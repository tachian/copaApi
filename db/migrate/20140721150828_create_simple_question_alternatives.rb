class CreateSimpleQuestionAlternatives < ActiveRecord::Migration
  def change
    create_table :simple_question_alternatives do |t|
      t.text :name
      t.string :media
      t.boolean :correct
      t.references :simple_question, index: true

      t.timestamps
    end
  end
end
