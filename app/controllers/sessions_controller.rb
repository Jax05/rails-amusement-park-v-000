class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_id(params[:id])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'session/new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
