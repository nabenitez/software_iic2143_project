class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.text :description
      t.float :reputation_score

      t.timestamps
    end
  end
end
