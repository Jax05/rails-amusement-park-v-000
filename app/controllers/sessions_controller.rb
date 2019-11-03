class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user

    if current_user
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render "session/new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
