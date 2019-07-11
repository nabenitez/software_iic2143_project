class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content

      t.references :conversation, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
