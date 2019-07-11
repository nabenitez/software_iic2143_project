class AddNameToExternalEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :external_events, :name, :string
  end
end
