class NoteBookSerializer < BaseSerializer
    attribute :name
    attribute :user_id
    attribute :delete_object

    has_many :notes 
end
  