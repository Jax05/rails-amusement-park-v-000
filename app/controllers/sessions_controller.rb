class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user

    raise @user.params
  end

  def destroy
    current_user = nil
    redirect_to '/'
  end
end
