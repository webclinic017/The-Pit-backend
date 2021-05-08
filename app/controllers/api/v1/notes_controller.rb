class Api::V1::NotesController < Api::V1::BaseController

    def index
        notes = Note.all
        render json: serialize_models(notes), status: :ok
    end

    def show
        note = Note.find(params[:id])
        render json: serialize_model(note), status: :ok
    end

    def create

        note = Note.find_or_create_by(note_params)

        if note.save
            render json: serialize_model(note)
        else
            render json: serialize_model_error(note.errors)
        end
    end

    def update
        note = Note.find(params[:id])
        note.update(note_params)
        render json: serialize_model(note), status: :ok
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
    end

    private

        def note_params
            # require !==
            params.require(:note).permit(:name, :paragraph, :note_book_id, :delete_object)
        end
end