class AdminsController < ApplicationController

  def index
      @login_admin = Admin.first
  end

  def create
    @login_admin.present? ? (redirect_to root_path, success: "login de admin exitoso") : (redirect_to admin_path, danger: "ERROR: no login de admin")
  end

  # private

  # def loginadmin_params
  #   params.require(:admin).permit(:admin, :privateNumber)
  # end

end

