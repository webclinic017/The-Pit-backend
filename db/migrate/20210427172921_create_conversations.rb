class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.datetime :last_read_at
      t.references :chatroom
      t.references :user

      t.timestamps
    end
  end
end
