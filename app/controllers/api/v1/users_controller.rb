class Api::V1::UsersController < Api::V1::BaseController
    before_action :authenticate, only: [:show, :update]

    def index
        users = User.all
        render json: serialize_models(users), status: :ok
    end

    # POST /login
    def login
      # find the user based on their username
      user = User.find_by(email: params[:email])
      # check their password
      if user && user.authenticate(params[:password])
        # save the user id in an encoded token
        token = JWT.encode({ user_id: user.id }, 'my$ecretK3y', 'HS256')
        render json: { user: serialize_model(user,  include: ['note-books', 'note-books.notes', 'note-books.notes.attached-files']), token: token }
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end
  
    # POST /signup
    def signup
      # get the user info from the form (params)
      user_params = params.permit(:name, :email, :password)
      # create a new user in the database (User.create)
      user = User.create(user_params)
      if user.valid?
        # send back a response with new user
        token = JWT.encode({ user_id: user.id }, 'my$ecretK3y', 'HS256')
        render json: { user: serialize_model(user,  include: ['note-books', 'note-books.notes', 'note-books.notes.attached-files']), token: token }, status: :created
      else
        # error messages
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # GET /me
    # authenticate
    def show
      render json: @current_user
    end
  
    # PATCH /me
    # authenticate
    def update
      @current_user.update(user_params)
      # response!
      render json: @current_user
    end
  
    private

        def user_params
            params.require(:user).permit(:name, :email)
        end


end
