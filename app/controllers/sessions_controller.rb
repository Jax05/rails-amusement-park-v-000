class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    current_user
  end

  def delete
    current_user = nil
  end
end
