class CreateNoteBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :note_books do |t|
      t.string :name
      t.integer :user_id
      t.boolean :delete_object

      t.timestamps
    end
  end
end
