class CreateGroupQuestions < ActiveRecord::Migration
  def change
    create_table :group_questions do |t|
      t.string :name

      t.timestamps
    end
  end
end
