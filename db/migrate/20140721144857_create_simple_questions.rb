class CreateSimpleQuestions < ActiveRecord::Migration
  def change
    create_table :simple_questions do |t|
      t.text :name
      t.string :media

      t.timestamps
    end
  end
end
