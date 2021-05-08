class NoteSerializer < BaseSerializer
    attribute :name
    attribute :paragraph
    attribute :note_book_id
    attribute :delete_object
    attribute :created_at
    attribute :updated_at
end