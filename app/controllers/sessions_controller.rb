class SessionsController < ApplicationController
  def new
  end

  # login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      remember user
      log_in user #
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  # logout
  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end
end
