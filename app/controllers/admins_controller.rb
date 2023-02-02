class AdminsController < ApplicationController
  skip_before_action :protect_pages
  def new 
  end

  def create
    @admin = Admin.find_by(username: params[:username])
    if @admin
      if @admin&.authenticate(params[:password])
        session[:admin_id] = @admin.id
        redirect_to portal_path, success: "Bienvenido #{@admin.username}"
      else 
        redirect_to new_admin_path, danger: "ERROR: Contraseña incorrecta"
      end
    else
      redirect_to new_admin_path, danger: "No se encuentra el usuario"
    end
  end

  def destroy      
    session[:admin_id] = nil   
    redirect_to root_path
  end  
end
