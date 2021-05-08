class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :paragraph, limit: 16.megabytes - 1
      t.integer :priority
      t.belongs_to :note_book, null: false
      t.boolean :delete_object

      t.timestamps
    end
  end
end
