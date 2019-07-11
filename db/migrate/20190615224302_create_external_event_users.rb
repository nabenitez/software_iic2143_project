class CreateExternalEventUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :external_event_users do |t|
      t.integer :user_id
      t.integer :external_event_id

      t.timestamps
    end
  end
end
