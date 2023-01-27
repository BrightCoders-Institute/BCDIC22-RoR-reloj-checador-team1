class AdminsController < ApplicationController

  def create
    @login_admin = Admin.new(loginadmin_params)
    @login_admin.save ? (redirect_to root_path, success: "login de admin exitoso") : (redirect_to admin_path, danger: "ERROR: no login de admin")
  end

  private

  def loginadmin_params
    params.require(:admin).permit(:admin, :privateNumber)
  end

end

