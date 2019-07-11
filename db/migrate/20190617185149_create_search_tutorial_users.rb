class CreateSearchTutorialUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :search_tutorial_users do |t|
      t.integer :user_id
      t.integer :search_tutorial_id

      t.timestamps
    end
  end
end
