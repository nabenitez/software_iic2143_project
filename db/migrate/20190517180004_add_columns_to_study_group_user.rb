class AddColumnsToStudyGroupUser < ActiveRecord::Migration[5.1]
  def change
    add_column :study_group_users, :user_id, :integer
    add_column :study_group_users, :study_group_id, :integer
  end
end
