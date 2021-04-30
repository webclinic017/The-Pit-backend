class User < ApplicationRecord
    has_many :stock_purchases

    has_secure_password
end
