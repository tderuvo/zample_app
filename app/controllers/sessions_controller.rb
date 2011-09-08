class SessionsController < ApplicationController
  
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination"
      @title = "Sign in"                      
      render 'new'   #unsuccessful therefore reshow the new page
    else
      # handle successful signin
    end
  end
  
  def destroy
    
  end

end
