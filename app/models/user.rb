class User < ApplicationRecord
    has_many :conversations, dependent: :destroy
    has_many :chatrooms, through: :conversations
    has_many :messages

    has_many :stock_purchases

    has_secure_password
end
