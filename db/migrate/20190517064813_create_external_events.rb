class CreateExternalEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :external_events do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
