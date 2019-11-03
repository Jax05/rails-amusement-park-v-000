class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user

    if current_user
      session[:id] = @user.id
      redirect_to '/'
    else
      render "user/new"
    end
  end

  def destroy
    current_user = nil
    redirect_to '/'
  end
end
