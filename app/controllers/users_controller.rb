class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Successfully updated!'
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit!
  end

  def set_user
    @user = User.find params[:id]
  end
end
