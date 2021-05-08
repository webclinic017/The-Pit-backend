class UserSerializer < BaseSerializer
    attribute :name
    attribute :email
    has_many :note_books
end