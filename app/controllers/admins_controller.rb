class AdminsController < ApplicationController
  
  namespace :adim do
    resources :episodes   
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      session[:admin_id] = @admin.id # auto log in
      redirect_to movies_path
    else
      render :new
    end
  end

  protected

  def admin_params
    params.require(:admin).permit(:email,:password, :password_confirmation)
  end
end
