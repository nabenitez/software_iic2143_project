class AddStudyGroupIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :study_group, foreign_key: true
  end
end
