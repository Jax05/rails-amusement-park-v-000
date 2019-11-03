class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :exception

  def welcome
    render '/welcome'
  end

  def current_user
    @current_user ||= User.find_by_id(params[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
