class Conversation < ApplicationRecord
    has_many :message, dependent: :destroy
    has_and_belongs_to_many :users
end
