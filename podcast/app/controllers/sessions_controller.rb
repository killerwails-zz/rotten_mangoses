class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])

    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to movies_path
    else
      render :new
    end
  end

end