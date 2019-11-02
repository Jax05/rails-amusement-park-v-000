class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
    render 'layouts/application'
  end

  def current_user
    @user = User.find_by_id(params[:id])
  end
end
