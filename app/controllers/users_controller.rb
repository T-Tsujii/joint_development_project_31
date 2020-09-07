class UsersController < ApplicationController
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
