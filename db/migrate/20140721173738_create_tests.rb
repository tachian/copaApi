class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.references :company, index: true
      t.integer :duration

      t.timestamps
    end
  end
end
