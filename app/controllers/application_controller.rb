class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception

  protected
  def authenticate_user!
    unless current_user
      flash[:danger] = 'Please login first!'
      redirect_to login_path
    end
  end
end
