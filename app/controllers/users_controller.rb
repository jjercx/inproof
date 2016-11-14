class UsersController < ActionController::Base

  def sign_up
    @user = User.new(user_params)
    if @user.save
      render json: {
        success: true,
        user: @user
      }, status: :created
    else
      render json: {
        success: false,
        errors: @user.errors.full_messages
      }, status: :bad_request
    end
  end

  def log_in
    if @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
      render json: {
        success: true,
        user: @user
      }, status: :ok
    else
      render json: {
        success: false,
        errors: "Could not log in."
      }, status: :bad_request
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
