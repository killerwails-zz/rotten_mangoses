class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])

    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to movies_pathnotice: "Welcome back!"
    else
      flash.now[:alert] = "Log in failed..."
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to movies_path, notice: "Adios!"
  end

end