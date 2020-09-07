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

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
