class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
    render '/welcome'
  end

  def current_user
    @user = User.find_by_id(params[:id])
  end
end
