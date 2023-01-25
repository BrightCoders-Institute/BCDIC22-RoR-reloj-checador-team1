class LoginsAdminsController < ApplicationController

  def index
    @login_admin = Administrator.first
    Administrator.admin_id_and_private_number_match ? (redirect_to login_admin_path, success: "login de admin exitoso") : (redirect_to login_admin_path, danger: "ERROR: no login de admin")
  end

  private

  def loginadmin_params
    params.require(:adminitrator).permit(:admin_id, :privateNumber)
  end
end
