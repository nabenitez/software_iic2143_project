class AddFileToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :file, :string
  end
end
