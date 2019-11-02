class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :exception

  def welcome
    render '/welcome'
  end

  def current_user
    @user = User.find_by_id(params[:id])
  end
end
