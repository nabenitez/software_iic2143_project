class CreateStudyGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :study_groups do |t|
      t.string :name
      t.string :acronym
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
