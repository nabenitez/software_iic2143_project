class AddStudyRoomToOfferTutorial < ActiveRecord::Migration[5.1]
  def change
    add_reference :offer_tutorials, :study_room, foreign_key: true
  end
end
