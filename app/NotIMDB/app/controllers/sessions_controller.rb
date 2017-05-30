class SessionsController < ApplicationController
  def new
  end
  
   def create
     user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_url

    else
      flash.now[:danger] = 'Invalid email/password'
      render 'new'
    end
   end

  def destroy
    log_out
    redirect_to home_url
    flash.now[:success] = "You have succesfully logged out."
  end
end
