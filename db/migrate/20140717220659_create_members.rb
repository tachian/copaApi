class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.references :team, index: true, null: false
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
