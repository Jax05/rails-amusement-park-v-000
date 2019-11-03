class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    current_user

    raise params
  end

  def destroy
    current_user = nil
    redirect_to '/'
  end
end
