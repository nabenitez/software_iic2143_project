class AddTeacherToOfferTutorial < ActiveRecord::Migration[5.1]
  def change
    add_column :offer_tutorials, :teacher, :string
  end
end
