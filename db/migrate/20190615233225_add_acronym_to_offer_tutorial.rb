class AddAcronymToOfferTutorial < ActiveRecord::Migration[5.1]
  def change
    add_column :offer_tutorials, :acronym, :string
  end
end
