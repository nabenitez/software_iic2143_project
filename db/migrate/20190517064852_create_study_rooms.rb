class CreateStudyRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :study_rooms do |t|
      t.string :name
      t.float :available_score
      t.float :noise_score
      t.float :plug_score
      t.integer :capacity
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
