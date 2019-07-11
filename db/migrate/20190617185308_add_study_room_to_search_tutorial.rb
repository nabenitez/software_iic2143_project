class AddStudyRoomToSearchTutorial < ActiveRecord::Migration[5.1]
  def change
    add_reference :search_tutorials, :study_room, foreign_key: true
  end
end
