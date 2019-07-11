class AddExternalEventIdToUserAndAddOfferTutorialIdToUserAndAddSearchTutorialIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :external_event_id, :integer
    add_column :users, :offer_tutorial_id, :integer
    add_column :users, :search_tutorial_id, :integer
  end
end
