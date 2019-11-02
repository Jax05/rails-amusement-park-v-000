class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @user = User.find_by_id(params[:id])
  end
end
