class ApplicationController < ActionController::Base
  add_flash_types :danger, :success
  before_action :set_current_user
  before_action :protect_pages

  def set_current_user
    Current.admin = Admin.find_by(id: session[:admin_id]) if session[:admin_id]
  end

  def protect_pages
    redirect_to new_admin_path, danger: "ERROR: Not allowed" unless Current.admin
  end

end
