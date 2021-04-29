class UserSerializer < BaseSerializer
    attributes :content, :created_at
    belongs_to :team
    belongs_to :user
end