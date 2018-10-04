class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user.try(:authenticate, params[:user][:password])
    return redirect_to '/users/new' unless @user
    session[:user_id] = @user.id
    redirect_to welcome_path
  end

  def destroy
    reset_session
    redirect_to '/login'
  end
end
