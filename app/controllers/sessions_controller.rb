class SessionsController < ApplicationController
  before_action :check_current_user, except: :destroy

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if @user and @user.authenticate params[:user][:password]
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:danger] = '帳號或密碼錯誤'
      render 'new'
    end
  end

  def destroy
    current_user = session[:user_id] = nil
    redirect_to login_path
  end

  private
  def check_current_user
    redirect_to root_path if current_user
  end
end
