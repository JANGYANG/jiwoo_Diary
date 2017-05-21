class UserController < ApplicationController
  def login
  end
  
  def certificate
    ji_password = 9008
    if params[:password]==ji_password.to_s
      session[:admin] = TRUE
      redirect_to '/'
    else
      redirect_to '/user/login'
    end
  end
  
  
  def logout
    session[:admin] = nil
    redirect_to '/'
  end
end
