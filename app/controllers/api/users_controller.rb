class Api::UsersController < ApiController
  def show
    render json: user
  end

  private

  def user
    @user ||= User.find params[:id]
  end
end
