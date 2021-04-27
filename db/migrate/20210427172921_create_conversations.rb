class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :title
      t.references :user

      t.timestamps
    end
    add_index :conversations, :title, unique: true
  end
end
