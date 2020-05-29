class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to mypages_path
    else
      flash[:danger] = get_err_msg
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end