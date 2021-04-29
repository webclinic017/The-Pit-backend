class Conversation < ApplicationRecord
    belongs_to :chatroom
    belongs_to :user
end
