class Api::V1::NoteBooksController < Api::V1::BaseController

    def index
        note_books = NoteBook.all
        render json: serialize_models(note_books), status: :ok
    end


    def show
        note_book = NoteBook.find(params[:id])
        render json: serialize_model(note_book, include: ['notes']), status: :ok
    end

    def create

        note_book = NoteBook.find_or_create_by(note_book_params)

        if note_book.save
            render json: serialize_model(note_book)
        else
            render json: serialize_model_error(note_book.errors)
        end
    end

    private

        def note_book_params
            # require !==
            params.require(:note_book).permit(:name, :user_id, :profile_image)
        end


end