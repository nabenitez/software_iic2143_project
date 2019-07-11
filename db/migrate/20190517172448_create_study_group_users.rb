class CreateStudyGroupUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :study_group_users do |t|
      t.timestamps


    end
  end
end
