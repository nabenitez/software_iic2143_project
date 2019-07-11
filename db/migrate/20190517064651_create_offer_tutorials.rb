class CreateOfferTutorials < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_tutorials do |t|
      t.integer :duration
      t.integer :price
      t.date :start

      t.timestamps
    end
  end
end
