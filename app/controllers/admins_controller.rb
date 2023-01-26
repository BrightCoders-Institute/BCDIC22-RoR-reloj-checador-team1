class AdminsController < ApplicationController

  def new 

  end

  def create
    @admin = Admin.find_by("admin = :admin", { admin: params[:admin]})

    @admin&.authenticate(params[:privateNumber]) ? (redirect_to admin_index_path, success: "Successful registration! admin") : (redirect_to admin_index_path, danger: "ERROR: Sign up failed! admin")

  end
end


