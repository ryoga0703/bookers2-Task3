class UsersController < ApplicationController
  def index
    @book = Book.new
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
  end

  def edit
    editUser = User.find(params[:id])
    if current_user.id == editUser.id then
      @user = User.find(params[:id])
    else
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
