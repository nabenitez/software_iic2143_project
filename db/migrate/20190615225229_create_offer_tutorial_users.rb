class CreateOfferTutorialUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_tutorial_users do |t|
      t.integer :user_id
      t.integer :offer_tutorial_id

      t.timestamps
    end
  end
end
