class CreateSearchTutorials < ActiveRecord::Migration[5.1]
  def change
    create_table :search_tutorials do |t|
      t.integer :duration
      t.string :course
      t.date :start

      t.timestamps
    end
  end
end
