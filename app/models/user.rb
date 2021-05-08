class User < ApplicationRecord
    has_many :stock_purchases
    has_many :note_books
    has_secure_password
end
