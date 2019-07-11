class CreateRoomEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :room_evaluations do |t|
      t.integer :study_room_id
      t.integer :user_id
      t.text :comment
      t.integer :available_score
      t.integer :plug_score
      t.integer :noise_score

      t.timestamps
    end
  end
end
