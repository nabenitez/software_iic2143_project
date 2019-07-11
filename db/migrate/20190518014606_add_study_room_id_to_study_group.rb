class AddStudyRoomIdToStudyGroup < ActiveRecord::Migration[5.1]
  def change
    add_reference :study_groups, :study_room, foreign_key: true
  end
end
