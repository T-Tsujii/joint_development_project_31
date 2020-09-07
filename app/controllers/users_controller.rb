class UsersController < ApplicationController
  # indexアクション
  def index
    @users = User.all
  end

  # newアクション
  def new
    @user = User.new
  end

  # createアクション
  def create
    # Strong Parameter の記述
    User.create(user_params)
  end

  # showアクション
  def show
    @user = User.find(params[:id])
  end

  # editアクション
  def edit
    @user = User.find(params[:id])
  end

  # updateアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  # destroyアクション
  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
