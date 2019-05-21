class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params_for_user
    if @user.save
      flash[:success] = "Successfully signed up!"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  end

  private
  def params_for_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
