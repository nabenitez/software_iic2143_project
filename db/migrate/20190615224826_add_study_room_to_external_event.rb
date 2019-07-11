class AddStudyRoomToExternalEvent < ActiveRecord::Migration[5.1]
  def change
    add_reference :external_events, :study_room, foreign_key: true
  end
end
